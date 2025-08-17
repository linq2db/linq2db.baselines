BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	`p`.`ParentID`,
	`gc3_1`.`not_null`,
	`gc3_1`.`ParentID`,
	`gc3_1`.`ChildID`,
	`gc3_1`.`GrandChildID`
FROM
	`Child` `ch`
		INNER JOIN `Parent` `p` ON `ch`.`ParentID` = `p`.`ParentID`
		LEFT JOIN (
			SELECT
				`gc3`.`ParentID`,
				`gc3`.`ChildID`,
				`gc3`.`GrandChildID`,
				1 as `not_null`
			FROM
				`GrandChild` `gc3`
					INNER JOIN (
						SELECT
							MAX(`max_1`.`GrandChildID`) as `c1`
						FROM
							`GrandChild` `max_1`
						GROUP BY
							`max_1`.`ChildID`
					) `t1` ON `gc3`.`GrandChildID` = `t1`.`c1`
		) `gc3_1` ON `p`.`ParentID` = `gc3_1`.`ParentID`
WHERE
	`gc3_1`.`not_null` IS NULL OR (`gc3_1`.`GrandChildID` NOT IN (111, 222) OR `gc3_1`.`GrandChildID` IS NULL)

