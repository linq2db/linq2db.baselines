BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @id1 Int32
SET     @id1 = 1

SELECT
	`left_1`.`ParentID`,
	`left_1`.`Value1`,
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	(
		SELECT
			`p`.`Value1`,
			`p`.`ParentID`
		FROM
			`Parent` `p`
		WHERE
			`p`.`ParentID` <> @id1
	) `left_1`
		RIGHT JOIN (
			SELECT
				`right_1`.`Value1`,
				`right_1`.`ParentID`
			FROM
				`Parent` `right_1`
					INNER JOIN `Parent` `right2` ON `right_1`.`Value1` = `right2`.`Value1` + 2
		) `t1` ON (`t1`.`Value1` + 2 IS NOT NULL AND `t1`.`Value1` + 2 = `left_1`.`Value1`)
ORDER BY
	`left_1`.`ParentID`

