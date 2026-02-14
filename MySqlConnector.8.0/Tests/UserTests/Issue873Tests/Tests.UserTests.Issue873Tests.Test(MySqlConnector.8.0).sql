-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Concat(' ', CAST(Coalesce(`f`.`Value1`, 0) AS CHAR(11))),
	`t1`.`SubSum`,
	EXISTS(
		SELECT
			*
		FROM
			`Child` `c_2`
				LEFT JOIN `Parent` `a_Parent_1` ON `c_2`.`ParentID` = `a_Parent_1`.`ParentID`
		WHERE
			`a_Parent_1`.`ParentID` = `f`.`ParentID` AND (`a_Parent_1`.`Value1` = `f`.`Value1` OR `a_Parent_1`.`Value1` IS NULL AND `f`.`Value1` IS NULL)
	),
	(
		SELECT
			COUNT(*) as `Count_1`
		FROM
			`Child` `p`
				LEFT JOIN `Parent` `a_Parent_2` ON `p`.`ParentID` = `a_Parent_2`.`ParentID`
		WHERE
			`a_Parent_2`.`ParentID` = `f`.`ParentID` AND (`a_Parent_2`.`Value1` = `f`.`Value1` OR `a_Parent_2`.`Value1` IS NULL AND `f`.`Value1` IS NULL)
	)
FROM
	`Parent` `f`
		LEFT JOIN LATERAL (
			SELECT
				SUM(`c_1`.`ChildID`) as `SubSum`
			FROM
				`Child` `c_1`
					LEFT JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`
			WHERE
				`a_Parent`.`ParentID` = `f`.`ParentID` AND (`a_Parent`.`Value1` = `f`.`Value1` OR `a_Parent`.`Value1` IS NULL AND `f`.`Value1` IS NULL)
		) `t1` ON 1=1
WHERE
	LOCATE('1', Concat(' ', CAST(Coalesce(`f`.`Value1`, 0) AS CHAR(11)))) > 0 AND
	`t1`.`SubSum` > 0

