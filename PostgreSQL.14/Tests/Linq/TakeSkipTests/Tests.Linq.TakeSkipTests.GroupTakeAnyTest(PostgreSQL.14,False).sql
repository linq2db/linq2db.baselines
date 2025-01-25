BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	EXISTS(
		SELECT
			item_1."Value"
		FROM
			"TakeSkipClass" item_1
		GROUP BY
			item_1."Value"
		HAVING
			COUNT(*) > 1
		LIMIT 1
	)

