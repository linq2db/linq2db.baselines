BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @id_1 Int32
SET     @id_1 = 2

SELECT 
	`c_1`.`ChildID`, 
	`c_1`.`ParentID`, 
	(
		SELECT 
			Sum(`g_1`.`ChildID` * `g_1`.`GrandChildID`)
		FROM
			`GrandChild` `g_1`
		WHERE
			`g_1`.`ChildID` = `c_1`.`ChildID` AND `g_1`.`GrandChildID` > 0
	), 
	(
		SELECT 
			Count(*)
		FROM
			`GrandChild` `g_2`
		WHERE
			`g_2`.`ChildID` = `c_1`.`ChildID` AND `g_2`.`GrandChildID` > 0
	)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = @id_1
ORDER BY
	`c_1`.`ParentID` DESC

