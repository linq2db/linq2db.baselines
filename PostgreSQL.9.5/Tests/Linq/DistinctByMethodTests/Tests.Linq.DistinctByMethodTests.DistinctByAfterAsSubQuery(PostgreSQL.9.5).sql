-- PostgreSQL.9.5 PostgreSQL
SELECT DISTINCT ON (t1."Country")
	t1."Id",
	t1."CustomerId",
	t1."Country",
	t1."Region"
FROM
	(
		SELECT
			c_1."Id",
			c_1."Country",
			c_1."CustomerId",
			c_1."Region"
		FROM
			"NullableKeyData" c_1
		WHERE
			c_1."CustomerId" LIKE 'DST%' ESCAPE '~'
	) t1
ORDER BY
	t1."Country",
	t1."Id"

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."CustomerId",
	t1."Country",
	t1."Region"
FROM
	"NullableKeyData" t1

