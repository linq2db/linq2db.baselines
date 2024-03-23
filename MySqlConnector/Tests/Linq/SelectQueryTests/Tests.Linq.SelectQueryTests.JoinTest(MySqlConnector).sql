BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SampleClass`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `SampleClass`
(
	`Id`,
	`Value`
)
VALUES
(1,100)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t`.`Id`,
	`t`.`Value`,
	1,
	3
FROM
	`SampleClass` `t`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

