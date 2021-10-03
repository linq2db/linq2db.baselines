﻿BeforeExecute
-- MySql

DROP TABLE IF EXISTS `SampleClass`

BeforeExecute
-- MySql

CREATE TABLE IF NOT EXISTS `SampleClass`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySql

INSERT INTO `SampleClass`
(
	`Id`,
	`Value`
)
VALUES
(1,100)

BeforeExecute
-- MySql

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
-- MySql

DROP TABLE IF EXISTS `SampleClass`

