-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	x_1."Id"
FROM
	(
		SELECT DISTINCT ON (x."Group")
			x."Priority",
			x."Id",
			x."Group" as "Group_1"
		FROM
			"TestData" x
		ORDER BY
			x."Group",
			x."Priority",
			x."Id"
	) x_1
ORDER BY
	x_1."Group_1",
	x_1."Priority",
	x_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	x_1."Id"
FROM
	(
		SELECT DISTINCT ON (x."Group")
			x."Priority",
			x."Id",
			x."Group" as "Group_1"
		FROM
			"TestData" x
		ORDER BY
			x."Group",
			x."Priority",
			x."Id"
	) x_1
ORDER BY
	x_1."Group_1",
	x_1."Priority",
	x_1."Id"

