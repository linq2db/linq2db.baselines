BeforeExecute
--  MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT 
	`lw_Parent`.`ParentID`, 
	`detail`.`ParentID`, 
	`detail`.`ChildID`
FROM
	( 
		SELECT DISTINCT 
			`t2`.`ParentID`
		FROM
			( 
				SELECT 
					`a_Parent`.`ParentID`
				FROM
					`Child` `t1`
						LEFT JOIN `Parent` `a_Parent` ON `t1`.`ParentID` = `a_Parent`.`ParentID`
				LIMIT @take
			) `t2`
	) `lw_Parent`
		INNER JOIN `Child` `detail` ON `lw_Parent`.`ParentID` = `detail`.`ParentID`

BeforeExecute
--  MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT 
	`t1`.`ParentID`, 
	`t1`.`ChildID`, 
	`a_Parent`.`ParentID`, 
	`a_Parent`.`Value1`
FROM
	`Child` `t1`
		LEFT JOIN `Parent` `a_Parent` ON `t1`.`ParentID` = `a_Parent`.`ParentID`
LIMIT @take

