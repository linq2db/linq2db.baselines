-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	t2."Id",
	t2."CustomerId",
	t2."RowNumber",
	t2."Region"
FROM
	(
		SELECT
			t1."Id",
			t1."CustomerId",
			t1."RowNumber_1" as "RowNumber",
			t1."Region"
		FROM
			(
				SELECT
					ROW_NUMBER() OVER (PARTITION BY e."Country" ORDER BY e."Id") as "RowNumber",
					e."Country" as "RowNumber_1",
					e."Id",
					e."CustomerId",
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
	) t2
WHERE
	ROWNUM <= :take
ORDER BY
	t2."Id"

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."CustomerId",
	t1."Country",
	t1."Region"
FROM
	"NullableKeyData" t1

