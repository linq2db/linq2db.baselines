-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."TestId"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e."TestId" ORDER BY e."Id") as "RowNumber",
			e."Id",
			e."TestId"
		FROM
			"TestTable" e
	) t1
WHERE
	t1."RowNumber" = 1
ORDER BY
	t1."Id"

