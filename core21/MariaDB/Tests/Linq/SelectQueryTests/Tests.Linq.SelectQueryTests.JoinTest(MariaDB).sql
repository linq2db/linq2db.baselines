BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `SampleClass`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `SampleClass`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `SampleClass`
(
	`Id`,
	`Value`
)
VALUES
(1,100)

BeforeExecute
-- MariaDB MySql.Official MySql

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
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `SampleClass`

