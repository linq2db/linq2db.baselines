BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`,
	`t1`.`ParentID_1`,
	`t1`.`Value1`
FROM
	`Child` `s`
		INNER JOIN (
			SELECT
				`c_1`.`ParentID`,
				`c_1`.`ChildID`,
				`a_Parent`.`ParentID` as `ParentID_1`,
				`a_Parent`.`Value1`,
				ROW_NUMBER() OVER (PARTITION BY `c_1`.`ChildID` ORDER BY `c_1`.`ChildID`) as `rn`
			FROM
				`Child` `c_1`
					LEFT JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`
		) `t1` ON `t1`.`ChildID` = `s`.`ChildID` AND `t1`.`rn` <= 1

