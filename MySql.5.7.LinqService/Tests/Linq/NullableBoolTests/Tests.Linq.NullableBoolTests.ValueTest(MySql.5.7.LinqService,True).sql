BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `NullableBoolClass`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `NullableBoolClass`
(
	`Value` BOOLEAN     NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Value UByte -- Boolean
SET     @Value = NULL

INSERT INTO `NullableBoolClass`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Value UByte -- Boolean
SET     @Value = 1

INSERT INTO `NullableBoolClass`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Value UByte -- Boolean
SET     @Value = 0

INSERT INTO `NullableBoolClass`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value UByte -- Boolean
SET     @value = 1

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` = @value

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value UByte -- Boolean
SET     @value = 1

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` = @value

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value UByte -- Boolean
SET     @value = 1

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` <> @value OR `t`.`Value` IS NULL

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value UByte -- Boolean
SET     @value = 1

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` <> @value

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `NullableBoolClass`

