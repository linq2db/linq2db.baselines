BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	CASE
		WHEN Cast(p."MoneyValue" as Float) - Floor(Cast(p."MoneyValue" as Float)) = 0.5D AND MOD(Floor(Cast(p."MoneyValue" as Float)), 2D) = 0D
			THEN Floor(Cast(p."MoneyValue" as Float))
		ELSE Round(Cast(p."MoneyValue" as Float), 0)
	END
FROM
	"LinqDataTypes" p
WHERE
	CASE
		WHEN Cast(p."MoneyValue" as Float) - Floor(Cast(p."MoneyValue" as Float)) = 0.5D AND MOD(Floor(Cast(p."MoneyValue" as Float)), 2D) = 0D
			THEN Floor(Cast(p."MoneyValue" as Float))
		ELSE Round(Cast(p."MoneyValue" as Float), 0)
	END <> 0D

