-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Item1",
	t1."Id",
	t1."TestId"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY item_1."Id")::Int - 1 as "Item1",
			item_1."Id",
			item_1."TestId"
		FROM
			"TestTable" item_1
	) t1
ORDER BY
	t1."Item1"

