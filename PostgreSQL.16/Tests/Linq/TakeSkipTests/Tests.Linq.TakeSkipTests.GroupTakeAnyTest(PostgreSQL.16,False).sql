-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	EXISTS(
		SELECT
			item_1."Value" as "Key_1"
		FROM
			"TakeSkipClass" item_1
		GROUP BY
			item_1."Value"
		HAVING
			COUNT(*) > 1
		LIMIT 1
	)

