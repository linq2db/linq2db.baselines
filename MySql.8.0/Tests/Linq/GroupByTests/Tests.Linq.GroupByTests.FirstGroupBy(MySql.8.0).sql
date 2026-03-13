-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`gr`.`ParentID` as `Key_1`
		FROM
			`Child` `gr`
	) `gr_1`
		INNER JOIN LATERAL (
			SELECT
				`t`.`ParentID`,
				`t`.`ChildID`
			FROM
				`Child` `t`
			WHERE
				`gr_1`.`Key_1` = `t`.`ParentID`
			ORDER BY
				`t`.`ChildID` DESC
			LIMIT 1
		) `t1` ON 1=1

