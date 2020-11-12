BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `SampleClass`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `SampleClass`
(
	`Id`,
	`Value`
)
VALUES
(1,100)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t`.`Id`,
	`t`.`Value`,
	1,
	3
FROM
	`SampleClass` `t`
		INNER JOIN (
			SELECT
				1 as `Key_1`
		) `s` ON `s`.`Key_1` = `t`.`Id`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `SampleClass`

