-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."CustomerId",
	t1."Country",
	t1."Region"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e."Country" ORDER BY e."Id") as "RowNumber",
			e."Id",
			e."CustomerId",
			e."Country",
			e."Region"
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
			) e
	) t1
WHERE
	t1."RowNumber" = 1
ORDER BY
	t1."Id"

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."CustomerId",
	t1."Country",
	t1."Region"
FROM
	"NullableKeyData" t1

