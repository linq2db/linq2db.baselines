BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`o`.`ParentID`,
	`o`.`Value1`,
	`cg`.`c_1`,
	`cg`.`ChildID`
FROM
	`Parent` `o`
		LEFT JOIN (
			SELECT
				`t1`.`ParentID` as `c_1`,
				`t1`.`ChildID`
			FROM
				`Child` `t1`
			LIMIT @take
		) `cg` ON `o`.`ParentID` = `cg`.`c_1`

