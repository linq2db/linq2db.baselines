BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
		LEFT JOIN (
			SELECT
				`a_Children`.`ParentID`,
				ROW_NUMBER() OVER (PARTITION BY `a_Children`.`ParentID` ORDER BY `a_Children`.`ParentID`) as `rn`
			FROM
				`Child` `a_Children`
		) `t1` ON `p`.`ParentID` = `t1`.`ParentID` AND `t1`.`rn` <= 1
WHERE
	`t1`.`ParentID` IS NOT NULL

