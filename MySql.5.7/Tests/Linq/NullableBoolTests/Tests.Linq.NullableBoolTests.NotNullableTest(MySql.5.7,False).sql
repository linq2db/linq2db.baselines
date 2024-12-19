BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `NotNullableBoolClass`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `NotNullableBoolClass`
(
	`Value` BOOLEAN NOT NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `NotNullableBoolClass`
(
	`Value`
)
VALUES
(1),
(0)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 0

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	NOT `t`.`Value`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 0

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `NotNullableBoolClass`

