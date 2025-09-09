BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

INSERT INTO `TestBool`
(
	`Id`,
	`Value`
)
VALUES
(
	1,
	NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TestBool` `t1`
LIMIT 2

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

UPDATE
	`TestBool` `t1`
SET
	`t1`.`Id` = 1,
	`t1`.`Value` = NOT `t1`.`Value`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TestBool` `t1`
LIMIT 2

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

UPDATE
	`TestBool` `t1`
SET
	`t1`.`Id` = 1,
	`t1`.`Value` = NULL

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TestBool` `t1`
LIMIT 2

