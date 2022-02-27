BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	Count(*)
FROM
	`Child` `t1`

BeforeExecute
-- MariaDB MySql.Official MySql

WITH `CTE1_` (`ParentID`, `ChildID`)
AS
(
	SELECT
		`t1`.`ParentID`,
		`t1`.`ChildID`
	FROM
		`Child` `t1`
)
SELECT
	Count(*)
FROM
	`CTE1_` `t2`

BeforeExecute
-- MariaDB MySql.Official MySql

WITH `CTE1_` (`ChildID`)
AS
(
	SELECT
		`c_2`.`ChildID`
	FROM
		`Child` `c_2`
)
SELECT
	Count(*)
FROM
	`CTE1_` `t1`

BeforeExecute
-- MariaDB MySql.Official MySql

WITH `CTE1_` (`ChildID`)
AS
(
	SELECT
		`c_2`.`ChildID` as `C_1`
	FROM
		`Child` `c_2`
)
SELECT
	EXISTS(
		SELECT
			*
		FROM
			`CTE1_` `t1`
	) as `c1`

