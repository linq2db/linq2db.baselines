BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	Floor(((Exp(Cast(p."MoneyValue" as Float) / 15) - Exp(-(Cast(p."MoneyValue" as Float) / 15))) / (Exp(Cast(p."MoneyValue" as Float) / 15) + Exp(-(Cast(p."MoneyValue" as Float) / 15)))) * 15)
FROM
	"LinqDataTypes" p
WHERE
	(Floor(((Exp(Cast(p."MoneyValue" as Float) / 15) - Exp(-(Cast(p."MoneyValue" as Float) / 15))) / (Exp(Cast(p."MoneyValue" as Float) / 15) + Exp(-(Cast(p."MoneyValue" as Float) / 15)))) * 15) <> 0.10000000000000001 OR Floor(((Exp(Cast(p."MoneyValue" as Float) / 15) - Exp(-(Cast(p."MoneyValue" as Float) / 15))) / (Exp(Cast(p."MoneyValue" as Float) / 15) + Exp(-(Cast(p."MoneyValue" as Float) / 15)))) * 15) IS NULL)

