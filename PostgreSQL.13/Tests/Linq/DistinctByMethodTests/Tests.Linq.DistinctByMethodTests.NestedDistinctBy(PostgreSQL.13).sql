-- PostgreSQL.13 PostgreSQL12
SELECT
	t3."Id",
	t3."Name",
	t3."Group_1",
	t3."Date_1",
	t3."Amount",
	t3."IsActive",
	t3."Priority"
FROM
	(
		SELECT DISTINCT ON (t2."Name")
			t2."Id",
			t2."Name",
			t2."Group_1",
			t2."Date_1",
			t2."Amount",
			t2."IsActive",
			t2."Priority"
		FROM
			(
				SELECT DISTINCT ON (t1."Group")
					t1."Date" as "Date_1",
					t1."Id",
					t1."Name",
					t1."Group" as "Group_1",
					t1."Amount",
					t1."IsActive",
					t1."Priority"
				FROM
					"TestData" t1
				ORDER BY
					t1."Group",
					t1."Date"
			) t2
		ORDER BY
			t2."Name",
			t2."Id",
			t2."Date_1"
	) t3
ORDER BY
	t3."Id"

-- PostgreSQL.13 PostgreSQL12
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

