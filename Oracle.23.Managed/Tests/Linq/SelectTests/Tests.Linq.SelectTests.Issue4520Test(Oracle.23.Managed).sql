BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN (i."BoolValue" IS NULL OR i."BoolValue" = 0) AND (i."IntValue" = (
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

