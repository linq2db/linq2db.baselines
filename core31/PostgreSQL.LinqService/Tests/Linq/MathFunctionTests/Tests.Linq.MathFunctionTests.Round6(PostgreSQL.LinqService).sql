BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	Round(p."MoneyValue", 0)
FROM
	"LinqDataTypes" p
WHERE
	(Round(p."MoneyValue", 0) <> 0 OR Round(p."MoneyValue", 0) IS NULL)

