﻿BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `SampleClass`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `SampleClass`
(
	`Id`,
	`Value`
)
VALUES
(1,100)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t`.`Id`,
	`t`.`Value`,
	`s`.`c1`
FROM
	`SampleClass` `t`
		INNER JOIN (
			SELECT
				1 as `c1`
		) `s` ON `s`.`c1` = `t`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `SampleClass`

