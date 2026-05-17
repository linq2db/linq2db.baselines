-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`a_2`.`ParentID`,
	`a_2`.`Value1`,
	`z_1`.`ParentID`,
	`z_1`.`Value1`,
	`y`.`ParentID`,
	`y`.`Value1`,
	`a`.`ParentID`,
	`a`.`Value1`,
	`z`.`ParentID`,
	`z`.`Value1`,
	`a_1`.`ParentID`,
	`a_1`.`Value1`
FROM
	`Parent` `a_2`
		LEFT JOIN `Parent` `y` ON `a_2`.`ParentID` = `y`.`ParentID`
		LEFT JOIN `Parent` `a` ON `a_2`.`ParentID` = `a`.`ParentID`
		LEFT JOIN `Parent` `z` ON `a_2`.`ParentID` = `z`.`ParentID`
		LEFT JOIN `Parent` `z_1` ON `a_2`.`ParentID` = Coalesce(`z_1`.`Value1`, 1)
		LEFT JOIN `Parent` `a_1` ON `a_2`.`ParentID` = `a_1`.`ParentID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

