BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `TestBool`
(
	`Id`,
	`Value`
)
VALUES
(
	1,
	0
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TestBool` `t1`
LIMIT 2

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

UPDATE
	`TestBool` `t1`
SET
	`t1`.`Id` = 1,
	`t1`.`Value` = NOT `t1`.`Value`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TestBool` `t1`
LIMIT 2

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

UPDATE
	`TestBool` `t1`
SET
	`t1`.`Id` = 1,
	`t1`.`Value` = 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TestBool` `t1`
LIMIT 2

