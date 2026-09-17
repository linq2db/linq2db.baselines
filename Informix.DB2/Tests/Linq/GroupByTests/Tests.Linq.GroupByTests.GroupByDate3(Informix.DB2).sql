-- Informix.DB2 Informix
SELECT
	SUM(grp_1.MoneyValue),
	Year(Nvl(grp_1.c1, TO_DATE('0001-01-01', '%Y-%m-%d'))),
	Month(Nvl(grp_1.c1, TO_DATE('0001-01-01', '%Y-%m-%d')))
FROM
	(
		SELECT
			Mdy(Month(grp.DateTimeValue), 1, Year(grp.DateTimeValue)) as c1,
			grp.MoneyValue
		FROM
			LinqDataTypes grp
	) grp_1
GROUP BY
	grp_1.c1

-- Informix.DB2 Informix
SELECT
	SUM(grp_1.MoneyValue),
	Year(Nvl(grp_1.c1, TO_DATE('0001-01-01', '%Y-%m-%d'))),
	Month(Nvl(grp_1.c1, TO_DATE('0001-01-01', '%Y-%m-%d')))
FROM
	(
		SELECT
			Mdy(Month(grp.DateTimeValue), 1, Year(grp.DateTimeValue)) as c1,
			grp.MoneyValue
		FROM
			LinqDataTypes grp
	) grp_1
GROUP BY
	grp_1.c1

