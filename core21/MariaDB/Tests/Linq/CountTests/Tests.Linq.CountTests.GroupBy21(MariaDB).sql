BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @n Int32
SET     @n = 1

SELECT
	(
		SELECT
			Count(*)
		FROM
			`Child` `ch`
		WHERE
			`ch`.`ParentID` + 1 < 3 AND (`t1`.`c1` = `ch`.`ParentID` + 1 AND `t1`.`ChildID` = `ch`.`ChildID`) AND
			`ch`.`ParentID` + 2 > @n
	)
FROM
	(
		SELECT
			`ch_1`.`ParentID` + 1 as `c1`,
			`ch_1`.`ChildID`
		FROM
			`Child` `ch_1`
		WHERE
			`ch_1`.`ParentID` + 2 > @n
	) `t1`
GROUP BY
	`t1`.`c1`,
	`t1`.`ChildID`

