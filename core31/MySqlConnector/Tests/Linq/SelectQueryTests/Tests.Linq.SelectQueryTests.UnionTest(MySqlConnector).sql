BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `SampleClass`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

SELECT 
	Date_Add(CURRENT_TIMESTAMP, Interval `t`.`Value` Day), 
	Date_Add(CURRENT_TIMESTAMP, Interval 2 Day)
FROM
	`SampleClass` `t`
WHERE
	`t`.`Value` = 1
UNION
SELECT 
	`t1`.`Value1`, 
	`t1`.`Value2`
FROM
	( 
		SELECT 
			Date_Add(CURRENT_TIMESTAMP, Interval 3 Day) as `Value1`, 
			Date_Add(CURRENT_TIMESTAMP, Interval 4 Day) as `Value2`
	) `t1`

BeforeExecute
-- MySqlConnector MySql

SELECT 
	`v`.`Value2`
FROM
	( 
		SELECT 
			Date_Add(CURRENT_TIMESTAMP, Interval `t`.`Value` Day) as `Value1`, 
			Date_Add(CURRENT_TIMESTAMP, Interval 2 Day) as `Value2`
		FROM
			`SampleClass` `t`
		WHERE
			`t`.`Value` = 1
		UNION
		SELECT 
			`t1`.`Value1`, 
			`t1`.`Value2`
		FROM
			( 
				SELECT 
					Date_Add(CURRENT_TIMESTAMP, Interval 3 Day) as `Value1`, 
					Date_Add(CURRENT_TIMESTAMP, Interval 4 Day) as `Value2`
			) `t1`
	) `v`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `SampleClass`

