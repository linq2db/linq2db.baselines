-- PostgreSQL.18 PostgreSQL13

SELECT
	x_1."Id",
	x_1."Name",
	x_1."Group_1",
	x_1."Date_1",
	x_1."Amount",
	x_1."IsActive",
	x_1."Priority"
FROM
	(
		SELECT DISTINCT ON (x."Group")
			x."Amount",
			x."Id",
			x."Name",
			x."Group" as "Group_1",
			x."Date" as "Date_1",
			x."IsActive",
			x."Priority"
		FROM
			"TestData" x
		ORDER BY
			x."Group",
			x."Date"
	) x_1
WHERE
	x_1."Amount" > 100

-- PostgreSQL.18 PostgreSQL13

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

