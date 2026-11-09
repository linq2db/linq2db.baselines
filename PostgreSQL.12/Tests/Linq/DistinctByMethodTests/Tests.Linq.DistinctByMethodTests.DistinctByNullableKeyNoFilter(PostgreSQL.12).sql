-- PostgreSQL.12 PostgreSQL12
SELECT
	t2."Id",
	t2."CustomerId",
	t2."Country",
	t2."Region"
FROM
	(
		SELECT DISTINCT ON (t1."Country")
			t1."CustomerId",
			t1."Id",
			t1."Country",
			t1."Region"
		FROM
			"NullableKeyData" t1
		ORDER BY
			t1."Country",
			t1."CustomerId"
	) t2
ORDER BY
	t2."CustomerId"

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."Id",
	t1."CustomerId",
	t1."Country",
	t1."Region"
FROM
	"NullableKeyData" t1

