-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

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
			"NullableKeyData" e
		WHERE
			e."CustomerId" LIKE 'DST%' ESCAPE '~'
	) t1
WHERE
	t1."RowNumber" = 1
ORDER BY
	t1."Id"
FETCH NEXT :take ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."CustomerId",
	t1."Country",
	t1."Region"
FROM
	"NullableKeyData" t1

