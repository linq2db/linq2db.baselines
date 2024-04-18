BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @take Int32
SET     @take = 1

SELECT
	Coalesce((
		SELECT
			`a_Parent`.`Value1`
		FROM
			`Child` `ch`
				LEFT JOIN `Parent` `a_Parent` ON `ch`.`ParentID` = `a_Parent`.`ParentID`
		WHERE
			`ch`.`ChildID` = `c_1`.`ChildID`
		LIMIT @take
	), `c_1`.`ChildID`)
FROM
	`Child` `c_1`

