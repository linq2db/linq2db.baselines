-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	`p`.`Value1`
FROM
	`Parent` `p`
ORDER BY
	`p`.`Value1`
LIMIT @take

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

