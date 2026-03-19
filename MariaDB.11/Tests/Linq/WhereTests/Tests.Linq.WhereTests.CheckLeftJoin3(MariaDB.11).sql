-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`
		LEFT JOIN (
			SELECT
				1 + `ch`.`ParentID` as `ParentID`,
				1 as `not_null`
			FROM
				`GrandChild` `ch`
			WHERE
				`ch`.`ParentID` > 0
		) `ch_1` ON `t1`.`ParentID` = `ch_1`.`ParentID`
WHERE
	`ch_1`.`not_null` IS NULL

