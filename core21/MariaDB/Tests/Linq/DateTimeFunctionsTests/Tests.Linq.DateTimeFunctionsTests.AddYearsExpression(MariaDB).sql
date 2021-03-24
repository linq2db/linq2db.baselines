BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @p_1 Double
SET     @p_1 = 1

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p_1 Year)
FROM
	`LinqDataTypes` `t`

