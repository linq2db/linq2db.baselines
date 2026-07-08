-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

SELECT
	x_1."Id"
FROM
	(
		SELECT DISTINCT ON (x."Group")
			x."Group" as "Group_1",
			x."Id"
		FROM
			"TestData" x
		ORDER BY
			x."Group",
			x."Priority",
			x."Id"
	) x_1
ORDER BY
	x_1."Group_1"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

SELECT
	x_1."Id"
FROM
	(
		SELECT DISTINCT ON (x."Group")
			x."Group" as "Group_1",
			x."Id"
		FROM
			"TestData" x
		ORDER BY
			x."Group",
			x."Priority",
			x."Id"
	) x_1
ORDER BY
	x_1."Group_1"

