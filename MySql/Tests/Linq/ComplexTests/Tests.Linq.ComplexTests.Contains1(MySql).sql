BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`p`.`ParentID`,
	`t2`.`gc3`,
	`t2`.`ChildID`,
	`t2`.`GrandChildID`,
	`t2`.`is_empty`
FROM
	`Child` `ch`
		INNER JOIN `Parent` `p` ON `ch`.`ParentID` = `p`.`ParentID`
		LEFT JOIN (
			SELECT
				`gc1`.`ParentID` as `gc3`,
				`gc1`.`ChildID`,
				`gc1`.`GrandChildID`,
				1 as `is_empty`
			FROM
				`GrandChild` `gc1`
					INNER JOIN (
						SELECT
							Max(`max_1`.`GrandChildID`) as `c1`
						FROM
							`GrandChild` `max_1`
						GROUP BY
							`max_1`.`ChildID`
					) `t1` ON (`gc1`.`GrandChildID` = `t1`.`c1` OR `gc1`.`GrandChildID` IS NULL AND `t1`.`c1` IS NULL)
		) `t2` ON `p`.`ParentID` = `t2`.`gc3`
WHERE
	(`t2`.`gc3` IS NULL AND `t2`.`ChildID` IS NULL AND `t2`.`GrandChildID` IS NULL OR (`t2`.`GrandChildID` NOT IN (111, 222) OR `t2`.`GrandChildID` IS NULL))

