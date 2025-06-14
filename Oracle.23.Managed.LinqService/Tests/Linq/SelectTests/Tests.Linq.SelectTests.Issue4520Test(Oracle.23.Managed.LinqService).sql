BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN (i."BoolValue" = 0 OR i."BoolValue" IS NULL) AND CASE
			WHEN i."IntValue" <> (
				SELECT
					p."IntValue"
				FROM
					"LinqDataTypes" p
				WHERE
					p.ID = 2
				FETCH NEXT 1 ROWS ONLY
			)
				THEN 0
			ELSE 1
		END = 1
			THEN 1
		ELSE 0
	END
FROM
	"LinqDataTypes" i
WHERE
	i.ID = 1

