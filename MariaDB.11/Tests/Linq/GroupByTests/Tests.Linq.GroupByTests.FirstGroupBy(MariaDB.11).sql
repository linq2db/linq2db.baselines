-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`gr`.`ParentID` as `Key_1`
		FROM
			`Child` `gr`
	) `gr_1`
		INNER JOIN (
			SELECT
				`t`.`ParentID`,
				`t`.`ChildID`,
				ROW_NUMBER() OVER (PARTITION BY `t`.`ParentID` ORDER BY `t`.`ChildID` DESC) as `rn`
			FROM
				`Child` `t`
		) `t1` ON `gr_1`.`Key_1` = `t1`.`ParentID` AND `t1`.`rn` = 1

