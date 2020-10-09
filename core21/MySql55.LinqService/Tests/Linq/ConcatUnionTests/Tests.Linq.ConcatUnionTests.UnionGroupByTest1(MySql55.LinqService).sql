BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	`t3`.`month_1`, 
	`t3`.`year_1`, 
	`t3`.`int_1`
FROM
	( 
		SELECT 
			`t2`.`month_1`, 
			`t2`.`year_1`, 
			`t2`.`int_1`
		FROM
			( 
				SELECT 
					`t1`.`c1` as `month_1`, 
					`t1`.`c2` as `year_1`, 
					1 as `int_1`
				FROM
					( 
						SELECT 
							Extract(month from `selectParam`.`DateTimeValue`) as `c1`, 
							Extract(year from `selectParam`.`DateTimeValue`) as `c2`
						FROM
							`LinqDataTypes` `selectParam`
					) `t1`
				GROUP BY
					`t1`.`c1`,
					`t1`.`c2`
			) `t2`
		UNION
		SELECT 
			`_`.`SmallIntValue` as `month_1`, 
			`_`.`SmallIntValue` as `year_1`, 
			3 as `int_1`
		FROM
			`LinqDataTypes` `_`
	) `t3`
UNION
SELECT 
	`t4`.`year_1`, 
	`t4`.`year_1`, 
	`t4`.`int_1`
FROM
	( 
		SELECT 
			Extract(year from `_1`.`DateTimeValue`) as `year_1`, 
			2 as `int_1`
		FROM
			`LinqDataTypes` `_1`
	) `t4`

