WITH TMP AS (
    SELECT
        id,
        list_id,
        name
    FROM
        {{ source('source_mailchimp', 'tags') }}
)

SELECT * FROM TMP
