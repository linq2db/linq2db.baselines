BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SampleClass`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value Int32
SET     @Value = 100

INSERT INTO `SampleClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t_1`.`Id`,
	`t_1`.`Value`,
	`t2`.`not_null`,
	`t2`.`Value1`,
	`t2`.`Value2`
FROM
	`SampleClass` `t_1`
		LEFT JOIN (
			SELECT
				`t1`.`Value1`,
				`t1`.`Value2`,
				1 as `not_null`
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
						Date_Add(CURRENT_TIMESTAMP, Interval 3 Day) as `Value1`,
						Date_Add(CURRENT_TIMESTAMP, Interval 4 Day) as `Value2`
				) `t1`
			LIMIT 1
		) `t2` ON 1=1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

