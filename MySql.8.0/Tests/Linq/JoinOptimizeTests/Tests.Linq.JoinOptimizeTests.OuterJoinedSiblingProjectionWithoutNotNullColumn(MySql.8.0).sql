-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`c_1`.`ChildID`,
	CASE
		WHEN `n`.`A` IS NULL THEN NULL
		WHEN `n`.`B` IS NULL THEN `c_1`.`ParentID`
		ELSE NULL
	END
FROM
	`Child` `c_1`
		LEFT JOIN `NullableOnlyRow` `n` ON `n`.`A` = `c_1`.`ChildID`
WHERE
	`c_1`.`ChildID` = 11 OR `c_1`.`ChildID` = 21 OR `c_1`.`ChildID` = 22

