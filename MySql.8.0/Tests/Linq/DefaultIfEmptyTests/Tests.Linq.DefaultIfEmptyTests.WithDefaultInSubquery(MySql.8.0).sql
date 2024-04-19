BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	(
		SELECT
			SUM(CASE
				WHEN `d`.`ParentID` IS NOT NULL THEN `d`.`ParentID`
				ELSE -100
			END)
		FROM
			(
				SELECT
					-100 as `ParentID`
			) `t1`
				LEFT JOIN `Child` `d` ON `p`.`ParentID` = `d`.`ParentID`
	)
FROM
	`Parent` `p`

