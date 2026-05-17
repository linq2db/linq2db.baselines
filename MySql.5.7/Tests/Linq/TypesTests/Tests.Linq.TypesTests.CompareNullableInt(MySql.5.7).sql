-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`ParentID`,
	`t`.`Value1`
FROM
	`Parent` `t`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @param Int32
SET     @param = 1

SELECT
	`t`.`ParentID`,
	`t`.`Value1`
FROM
	`Parent` `t`
WHERE
	`t`.`Value1` = @param

