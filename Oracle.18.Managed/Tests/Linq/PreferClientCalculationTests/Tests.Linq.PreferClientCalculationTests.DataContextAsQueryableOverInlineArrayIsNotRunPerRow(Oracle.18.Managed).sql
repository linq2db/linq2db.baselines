-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	e."Id",
	CASE
		WHEN 0 IN (
			SELECT
				t1."item"
			FROM
				(
					SELECT j."Value1" AS "item" FROM sys.dual
					UNION ALL
					SELECT 5 FROM sys.dual) t1
		)
			THEN 1
		ELSE 0
	END
FROM
	"MissedJoinEntity" e
		LEFT JOIN "MissedJoinEntity" j ON j."Id" = e."Id" + 1000

