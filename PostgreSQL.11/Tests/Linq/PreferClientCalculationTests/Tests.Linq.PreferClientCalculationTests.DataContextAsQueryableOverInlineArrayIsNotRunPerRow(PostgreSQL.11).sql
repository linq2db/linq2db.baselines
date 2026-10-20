-- PostgreSQL.11 PostgreSQL
SELECT
	e."Id",
	CASE
		WHEN 0 IN (
			SELECT
				t1.item
			FROM
				(VALUES
					(j."Value1"), (5)
				) t1(item)
		)
			THEN True
		ELSE False
	END
FROM
	"MissedJoinEntity" e
		LEFT JOIN "MissedJoinEntity" j ON j."Id" = e."Id" + 1000

