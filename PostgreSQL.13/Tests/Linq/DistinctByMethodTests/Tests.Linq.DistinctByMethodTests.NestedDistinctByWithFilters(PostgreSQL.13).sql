-- PostgreSQL.13 PostgreSQL12
SELECT DISTINCT ON (t1."Region")
	t1."Id",
	t1."CustomerId",
	t1."Country",
	t1."Region"
FROM
	(
		SELECT DISTINCT ON (c_1."Country")
			c_1."Id",
			c_1."CustomerId",
			c_1."Region",
			c_1."Country"
		FROM
			"NullableKeyData" c_1
		WHERE
			c_1."CustomerId" LIKE 'DST%' ESCAPE '~'
		ORDER BY
			c_1."Country",
			c_1."Id"
	) t1
WHERE
	t1."Id" < 100
ORDER BY
	t1."Region",
	t1."CustomerId"

-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."Id",
	t1."CustomerId",
	t1."Country",
	t1."Region"
FROM
	"NullableKeyData" t1

