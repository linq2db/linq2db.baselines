-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @n Int32
SET     @n = 1

SELECT DISTINCT
	`g_1`.`ParentID` + 1
FROM
	`Child` `g_1`
WHERE
	`g_1`.`ParentID` + 1 > @n

