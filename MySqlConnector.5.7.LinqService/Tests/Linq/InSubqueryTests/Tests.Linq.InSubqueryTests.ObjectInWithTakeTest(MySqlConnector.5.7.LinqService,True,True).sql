BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @take Int32
SET     @take = 100

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					`p`.`ParentID`,
					`p`.`Value1` as `Value_1`
				FROM
					`Parent` `p`
				LIMIT @take
			) `t1`
		WHERE
			`t1`.`ParentID` = `c_1`.`ParentID` AND `t1`.`Value_1` = `c_1`.`ParentID`
	)

