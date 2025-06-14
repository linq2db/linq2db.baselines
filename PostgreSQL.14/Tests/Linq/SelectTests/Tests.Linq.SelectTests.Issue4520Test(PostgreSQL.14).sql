BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN NOT CASE
			WHEN i."BoolValue" IS NOT NULL THEN i."BoolValue"
			ELSE False
		END AND CASE
			WHEN i."IntValue" <> (
				SELECT
					p."IntValue"
				FROM
					"LinqDataTypes" p
				WHERE
					p."ID" = 2
				LIMIT 1
			)
				THEN False
			ELSE True
		END
			THEN True
		ELSE False
	END
FROM
	"LinqDataTypes" i
WHERE
	i."ID" = 1

