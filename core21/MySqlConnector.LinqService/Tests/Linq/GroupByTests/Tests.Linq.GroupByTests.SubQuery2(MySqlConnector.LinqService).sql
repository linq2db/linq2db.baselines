BeforeExecute
-- MySqlConnector MySql
DECLARE @n Int32
SET     @n = 1

SELECT
	`ch_1`.`ParentID_1`
FROM
	(
		SELECT
			`ch`.`ParentID` + 1 as `ParentID`,
			`ch`.`ParentID` + 1 as `ParentID_1`
		FROM
			`Child` `ch`
	) `ch_1`
WHERE
	`ch_1`.`ParentID` > @n
GROUP BY
	`ch_1`.`ParentID`,
	`ch_1`.`ParentID_1`

