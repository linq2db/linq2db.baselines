-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
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

