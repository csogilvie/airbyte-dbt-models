with interest_expanded as (SELECT
    id AS member_id,
    key AS interest_id,
    value::boolean AS interested
FROM
    "reporting"."mailchimp"."list_members",
    LATERAL jsonb_each(interests))
    select interest_id, member_id from interest_expanded where interested = true