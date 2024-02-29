BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `NullableBoolClass`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `NullableBoolClass`
(
	`Value` BOOLEAN     NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `NullableBoolClass`
(
	`Value`
)
VALUES
(NULL),
(1),
(0)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` = 0

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` = 0

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	(`t`.`Value` = 1 OR `t`.`Value` IS NULL)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` = 1

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `NullableBoolClass`

