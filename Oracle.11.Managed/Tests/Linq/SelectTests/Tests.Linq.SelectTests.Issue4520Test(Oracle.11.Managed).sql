BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	CASE
		WHEN (i."BoolValue" = 0 OR i."BoolValue" IS NULL) AND (i."IntValue" = (
			SELECT
				p."IntValue"
			FROM
				"LinqDataTypes" p
			WHERE
				p.ID = 2 AND ROWNUM <= 1
		) OR i."IntValue" IS NULL AND (
			SELECT
				p."IntValue"
			FROM
				"LinqDataTypes" p
			WHERE
				p.ID = 2 AND ROWNUM <= 1
		) IS NULL)
			THEN 1
		ELSE 0
	END
FROM
	"LinqDataTypes" i
WHERE
	i.ID = 1

