-- PostgreSQL.18 PostgreSQL
DECLARE @p -2147483639 -- Object
SET     @p = {1,2,3}

SELECT
	a_1."Id"
FROM
	unnest(:p) i(value)
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

