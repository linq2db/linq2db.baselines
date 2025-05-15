BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN (CASE
			WHEN i."BoolValue" = 1 THEN 1
			WHEN i."BoolValue" = 0 THEN 0
			ELSE NULL
		END = 0 OR i."BoolValue" IS NULL) AND (i."IntValue" = (
			SELECT
				p."IntValue"
			FROM
				"LinqDataTypes" p
			WHERE
				p.ID = 2
			FETCH NEXT 1 ROWS ONLY
		) OR i."IntValue" IS NULL AND (
			SELECT
				p."IntValue"
			FROM
				"LinqDataTypes" p
			WHERE
				p.ID = 2
			FETCH NEXT 1 ROWS ONLY
		) IS NULL)
			THEN 1
		ELSE 0
	END
FROM
	"LinqDataTypes" i
WHERE
	i.ID = 1

