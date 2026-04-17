-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @value -2147483639 -- Object
SET     @value = {1,2,3}

SELECT
	a_1."Id"
FROM
	UNNEST(:value) i(value)
		INNER JOIN LATERAL (
			SELECT
				a."Id"
			FROM
				"Issue5285Table" a
			WHERE
				a."Value" > i.value
			ORDER BY
				a."Value"
			LIMIT 1
		) a_1 ON 1=1

