BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`f_1`.`Label`,
	`f_1`.`SubSum`,
	`f_1`.`Any_1`,
	`f_1`.`COUNT_1`
FROM
	(
		SELECT
			Concat(' ', CAST(Coalesce(`f`.`Value1`, 0) AS CHAR(11))) as `Label`,
			(
				SELECT
					SUM(`c_1`.`ChildID`)
				FROM
					`Child` `c_1`
						LEFT JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`
				WHERE
					`a_Parent`.`ParentID` = `f`.`ParentID` AND (`a_Parent`.`Value1` = `f`.`Value1` OR `a_Parent`.`Value1` IS NULL AND `f`.`Value1` IS NULL)
			) as `SubSum`,
			CASE
				WHEN EXISTS(
					SELECT
						*
					FROM
						`Child` `c_2`
							LEFT JOIN `Parent` `a_Parent_1` ON `c_2`.`ParentID` = `a_Parent_1`.`ParentID`
					WHERE
						`a_Parent_1`.`ParentID` = `f`.`ParentID` AND (`a_Parent_1`.`Value1` = `f`.`Value1` OR `a_Parent_1`.`Value1` IS NULL AND `f`.`Value1` IS NULL)
				)
					THEN 1
				ELSE 0
			END as `Any_1`,
			(
				SELECT
					COUNT(*)
				FROM
					`Child` `p`
						LEFT JOIN `Parent` `a_Parent_2` ON `p`.`ParentID` = `a_Parent_2`.`ParentID`
				WHERE
					`a_Parent_2`.`ParentID` = `f`.`ParentID` AND (`a_Parent_2`.`Value1` = `f`.`Value1` OR `a_Parent_2`.`Value1` IS NULL AND `f`.`Value1` IS NULL)
			) as `COUNT_1`
		FROM
			`Parent` `f`
	) `f_1`
WHERE
	LOCATE('1', `f_1`.`Label`) > 0 AND `f_1`.`SubSum` > 0

