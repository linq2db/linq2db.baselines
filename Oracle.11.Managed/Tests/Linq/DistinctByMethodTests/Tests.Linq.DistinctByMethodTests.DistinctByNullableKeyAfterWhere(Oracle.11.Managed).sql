-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."RowNumber_2",
	t1."RowNumber_1",
	t1."Region"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e."Country" ORDER BY e."CustomerId") as "RowNumber",
			e."Country" as "RowNumber_1",
			e."CustomerId" as "RowNumber_2",
			e."Id",
			e."Region"
		FROM
			"NullableKeyData" e
		WHERE
			e."CustomerId" LIKE 'DST%' ESCAPE '~'
	) t1
WHERE
	t1."RowNumber" = 1
ORDER BY
	t1."RowNumber_2"

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."CustomerId",
	t1."Country",
	t1."Region"
FROM
	"NullableKeyData" t1

