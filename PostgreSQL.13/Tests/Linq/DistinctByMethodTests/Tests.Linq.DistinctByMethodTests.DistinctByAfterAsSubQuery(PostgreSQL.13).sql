-- PostgreSQL.13 PostgreSQL12
SELECT
	t2."Id",
	t2."CustomerId",
	t2."Country",
	t2."Region"
FROM
	(
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
	) t2
ORDER BY
	t2."Id"

-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."Id",
	t1."CustomerId",
	t1."Country",
	t1."Region"
FROM
	"NullableKeyData" t1

