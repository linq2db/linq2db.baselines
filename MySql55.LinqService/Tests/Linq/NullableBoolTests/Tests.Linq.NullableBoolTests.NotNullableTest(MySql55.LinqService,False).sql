BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `NotNullableBoolClass`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `NotNullableBoolClass`
(
	`Value` BOOLEAN NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Value UByte -- Boolean
SET     @Value = 1

INSERT INTO `NotNullableBoolClass`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Value UByte -- Boolean
SET     @Value = 0

INSERT INTO `NotNullableBoolClass`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 1

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 1

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 0

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 0

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 0

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 1

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `NotNullableBoolClass`

