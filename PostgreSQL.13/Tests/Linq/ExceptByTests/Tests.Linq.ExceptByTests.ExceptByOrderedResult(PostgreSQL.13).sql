-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."TestId"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY x."TestId" ORDER BY x."TestId") as "RowNumber",
			x."TestId",
			x."Id"
		FROM
			"TestTable" x
		WHERE
			x."TestId" NOT IN (20)
	) t1
WHERE
	t1."RowNumber" = 1
ORDER BY
	t1."TestId" DESC,
	t1."Id"

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."TestId"
FROM
	"TestTable" t1

