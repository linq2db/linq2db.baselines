-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value Int32
SET     @value = 3
DECLARE @low Int32
SET     @low = 0

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`
WHERE
	@value BETWEEN @low AND `p`.`ParentID`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value Int32
SET     @value = 3
DECLARE @low Int32
SET     @low = 0

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`
WHERE
	@value NOT BETWEEN @low AND `p`.`ParentID`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

