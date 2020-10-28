BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(Cast(t."ID" as SmallInt) as VarChar(3))
FROM
	"LinqDataTypes" t
WHERE
	Length(Cast(Cast(t."ID" as SmallInt) as VarChar(3))) > 0

