BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`d`.`c1`
FROM
	(
		SELECT
			`t`.`DateTimeValue` as `c1`
		FROM
			`LinqDataTypes` `t`
	) `d`
WHERE
	Extract(day from `d`.`c1`) > 0

