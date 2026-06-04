-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	`p`.`Value1`
FROM
	`Parent` `p`
ORDER BY
	`p`.`Value1`
LIMIT @take

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

