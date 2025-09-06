WITH TMP AS (
    SELECT
        id,
        list_id,
        display_order,
        title,
        type
    FROM
        {{ source('source_mailchimp', 'interest_categories') }}
)

SELECT * FROM TMP
