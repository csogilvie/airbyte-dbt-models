WITH TMP AS (
    SELECT
        id as member_id,
  		tag_elem->>'id' AS tag_id
    FROM
        {{ source('source_mailchimp', 'list_members') }},
        LATERAL jsonb_array_elements(tags::jsonb) AS tag_elem
    WHERE tags::jsonb != '[]'
)

SELECT * FROM TMP
