BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SampleClass`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value_1 Int32
SET     @Value_1 = 100

INSERT INTO `SampleClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t`.`Id`,
	`t`.`Value`,
	`s`.`Key_1`,
	`s`.`SecondValue`
FROM
	`SampleClass` `t`
		INNER JOIN (
			SELECT
				1 as `Key_1`,
				3 as `SecondValue`
		) `s` ON `s`.`Key_1` = `t`.`Id`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

