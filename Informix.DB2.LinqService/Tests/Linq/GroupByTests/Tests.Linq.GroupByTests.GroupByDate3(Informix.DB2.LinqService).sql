﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	SUM(grp_1.MoneyValue),
	grp_1.Year_1,
	grp_1.Month_1
FROM
	(
		SELECT
			Mdy(Month(grp.DateTimeValue), 1, Year(grp.DateTimeValue)) as c1,
			grp.MoneyValue,
			Year(Mdy(Month(grp.DateTimeValue), 1, Year(grp.DateTimeValue))) as Year_1,
			Month(Mdy(Month(grp.DateTimeValue), 1, Year(grp.DateTimeValue))) as Month_1
		FROM
			LinqDataTypes grp
	) grp_1
GROUP BY
	grp_1.c1,
	grp_1.Year_1,
	grp_1.Month_1

