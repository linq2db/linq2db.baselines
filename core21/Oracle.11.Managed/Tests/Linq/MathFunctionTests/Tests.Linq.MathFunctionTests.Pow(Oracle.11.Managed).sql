BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Floor(Power(Cast(p."MoneyValue" as Float), 3D))
FROM
	"LinqDataTypes" p
WHERE
	(Floor(Power(Cast(p."MoneyValue" as Float), 3D)) <> 0D OR Floor(Power(Cast(p."MoneyValue" as Float), 3D)) IS NULL)

