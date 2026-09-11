-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
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
			t1."Group" as "Group_1",
			t1."Id",
			t1."Name",
			t1."Date" as "Date_1",
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
	t2."Group_1"
LIMIT :take

-- PostgreSQL.9.2 PostgreSQL
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

