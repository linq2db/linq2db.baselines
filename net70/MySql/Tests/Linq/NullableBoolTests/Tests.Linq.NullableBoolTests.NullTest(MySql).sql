BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `NullableBoolClass`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `NullableBoolClass`
(
	`Value` BOOLEAN     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `NullableBoolClass`
(
	`Value`
)
VALUES
(NULL),
(1),
(0)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` IS NULL

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` IS NULL

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` IS NOT NULL

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` IS NOT NULL

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `NullableBoolClass`

