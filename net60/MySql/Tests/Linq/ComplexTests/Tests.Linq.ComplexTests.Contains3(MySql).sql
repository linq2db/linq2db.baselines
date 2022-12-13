BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`p`.`ParentID`,
	`t3`.`gc`,
	`t3`.`ChildID`,
	`t3`.`GrandChildID`
FROM
	`Child` `ch`
		INNER JOIN `Parent` `p` ON `ch`.`ParentID` = `p`.`ParentID`
		LEFT JOIN (
			SELECT
				`gc`.`ParentID` as `gc`,
				`gc`.`ChildID`,
				`gc`.`GrandChildID`
			FROM
				`GrandChild` `gc`
					INNER JOIN (
						SELECT
							`max_1`.`c1`
						FROM
							(
								SELECT
									Max(`t1`.`GrandChildID`) as `c1`
								FROM
									`GrandChild` `t1`
								GROUP BY
									`t1`.`ChildID`
							) `max_1`
					) `t2` ON (`gc`.`GrandChildID` = `t2`.`c1` OR `gc`.`GrandChildID` IS NULL AND `t2`.`c1` IS NULL)
		) `t3` ON `p`.`ParentID` = `t3`.`gc`
WHERE
	(`t3`.`gc` IS NULL AND `t3`.`ChildID` IS NULL AND `t3`.`GrandChildID` IS NULL OR (`t3`.`GrandChildID` NOT IN (111, 222) OR `t3`.`GrandChildID` IS NULL))

