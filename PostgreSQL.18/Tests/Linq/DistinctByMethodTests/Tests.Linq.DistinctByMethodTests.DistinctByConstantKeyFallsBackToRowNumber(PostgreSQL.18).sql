-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Name",
	t1."Group_1",
	t1."Date_1",
	t1."Amount",
	t1."IsActive",
	t1."Priority"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY 1 ORDER BY e_1."Group", e_1."Date") as "RowNumber",
			e_1."Group" as "Group_1",
			e_1."Date" as "Date_1",
			e_1."Id",
			e_1."Name",
			e_1."Amount",
			e_1."IsActive",
			e_1."Priority"
		FROM
			"TestData" e,
			"TestData" e_1
	) t1
WHERE
	t1."RowNumber" = 1
ORDER BY
	t1."Group_1",
	t1."Date_1"

-- PostgreSQL.18 PostgreSQL

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

