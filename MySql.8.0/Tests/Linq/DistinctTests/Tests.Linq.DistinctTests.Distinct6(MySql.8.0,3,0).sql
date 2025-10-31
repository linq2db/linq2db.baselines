-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ParentID Int32
SET     @ParentID = 1
DECLARE @Value1 Int32
SET     @Value1 = 4

SELECT DISTINCT
	Coalesce(`p`.`Value1`, `p`.`ParentID` + @ParentID),
	@Value1
FROM
	`Parent` `p`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

