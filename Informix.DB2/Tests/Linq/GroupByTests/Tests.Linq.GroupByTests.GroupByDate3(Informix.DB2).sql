-- Informix.DB2 Informix

SELECT
	SUM(grp_1.MoneyValue),
	Year(grp_1.Date_1),
	Month(grp_1.Date_1)
FROM
	(
		SELECT
			Mdy(Month(grp.DateTimeValue), 1, Year(grp.DateTimeValue)) as Date_1,
			grp.MoneyValue
		FROM
			LinqDataTypes grp
	) grp_1
GROUP BY
	grp_1.Date_1

-- Informix.DB2 Informix

SELECT
	SUM(grp_1.MoneyValue),
	Year(grp_1.Date_1),
	Month(grp_1.Date_1)
FROM
	(
		SELECT
			Mdy(Month(grp.DateTimeValue), 1, Year(grp.DateTimeValue)) as Date_1,
			grp.MoneyValue
		FROM
			LinqDataTypes grp
	) grp_1
GROUP BY
	grp_1.Date_1

