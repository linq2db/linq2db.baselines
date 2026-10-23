-- PostgreSQL.12 PostgreSQL12
SELECT DISTINCT ON (c_1."Country")
	c_1."Id",
	c_1."Country",
	r."Tag"
FROM
	"NullableKeyData" c_1
		INNER JOIN "RelatedData" r ON c_1."Id" = r."OwnerId"
WHERE
	c_1."CustomerId" LIKE 'DST%' ESCAPE '~'
ORDER BY
	c_1."Country",
	c_1."Id"

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."Id",
	t1."CustomerId",
	t1."Country",
	t1."Region"
FROM
	"NullableKeyData" t1

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."Id",
	t1."OwnerId",
	t1."Tag"
FROM
	"RelatedData" t1

