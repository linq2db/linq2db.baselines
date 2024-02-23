BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t_1."c1"
FROM
	(
		SELECT
			Cast(Cast(Floor(t."MoneyValue") as Int) as Float) * 57.295779513082323D as "c1"
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	(Cast(t_1."c1" as Float) <> 0.10000000000000001D OR Cast(t_1."c1" as Float) IS NULL)

