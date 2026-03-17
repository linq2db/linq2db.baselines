-- Informix.DB2 Informix

SELECT
	SUM(grp_1.MoneyValue),
	Year(grp_1.c1),
	Month(grp_1.c1)
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
	Year(grp_1.c1),
	Month(grp_1.c1)
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

