BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	CASE
		WHEN `t1`.`ParentID` IS NULL THEN 0
		ELSE (
			SELECT
				`c_3`.`ParentID`
			FROM
				`Child` `c_3`
			WHERE
				`c_3`.`ParentID` = `p`.`ParentID` AND `c_3`.`ChildID` > -100 AND
				`c_3`.`ParentID` > 0
			ORDER BY
				`c_3`.`ChildID`
			LIMIT 1
		)
	END,
	EXISTS(
		SELECT
			*
		FROM
			`Child` `c_4`
		WHERE
			`c_4`.`ParentID` = `p`.`ParentID` AND `c_4`.`ChildID` > -100
	),
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `c_5`
		WHERE
			`c_5`.`ParentID` = `p`.`ParentID` AND `c_5`.`ChildID` > -100
	),
	`t2`.`ParentID`,
	`t2`.`ChildID`
FROM
	`Parent` `p`
		LEFT JOIN (
			SELECT
				`c_1`.`ParentID`,
				ROW_NUMBER() OVER (PARTITION BY `c_1`.`ParentID` ORDER BY `c_1`.`ChildID`) as `rn`
			FROM
				`Child` `c_1`
			WHERE
				`c_1`.`ChildID` > -100 AND `c_1`.`ParentID` > 0
		) `t1` ON `t1`.`ParentID` = `p`.`ParentID` AND `t1`.`rn` <= 1
		LEFT JOIN (
			SELECT
				`c_2`.`ParentID`,
				`c_2`.`ChildID`,
				ROW_NUMBER() OVER (PARTITION BY `c_2`.`ParentID` ORDER BY `c_2`.`ChildID`) as `rn`
			FROM
				`Child` `c_2`
			WHERE
				`c_2`.`ChildID` > -100
		) `t2` ON `t2`.`ParentID` = `p`.`ParentID` AND `t2`.`rn` <= 1

