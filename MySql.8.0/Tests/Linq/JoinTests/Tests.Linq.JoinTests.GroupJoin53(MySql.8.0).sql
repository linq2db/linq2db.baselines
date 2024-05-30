BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ParentID`
FROM
	`Parent` `t2`
		INNER JOIN LATERAL (
			SELECT
				`ch`.`ParentID`
			FROM
				`Child` `ch`
			WHERE
				`t2`.`ParentID` = `ch`.`ParentID`
			LIMIT 1
		) `t1` ON 1=1
WHERE
	`t2`.`ParentID` = 1

