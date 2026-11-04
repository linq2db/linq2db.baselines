-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Name",
	t1."RowNumber_1",
	t1."RowNumber_2",
	t1."Amount",
	t1."IsActive",
	t1."Priority"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY 1 ORDER BY e."Group", e."Date") as "RowNumber",
			e."Group" as "RowNumber_1",
			e."Date" as "RowNumber_2",
			e."Id",
			e."Name",
			e."Amount",
			e."IsActive",
			e."Priority"
		FROM
			"TestData" e
	) t1
WHERE
	t1."RowNumber" = 1
ORDER BY
	t1."RowNumber_1",
	t1."RowNumber_2"

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Name",
	t1."Group",
	t1."Date",
	t1."Amount",
	t1."IsActive",
	t1."Priority"
FROM
	"TestData" t1

