-- PostgreSQL.19 PostgreSQL12
SELECT DISTINCT ON (c_1."Country")
	c_1."Id",
	c_1."Country",
	c_1."Region"
FROM
	"NullableKeyData" c_1
WHERE
	c_1."CustomerId" LIKE 'DST%' ESCAPE '~'
ORDER BY
	c_1."Country",
	c_1."Id"

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Id",
	t1."CustomerId",
	t1."Country",
	t1."Region"
FROM
	"NullableKeyData" t1

