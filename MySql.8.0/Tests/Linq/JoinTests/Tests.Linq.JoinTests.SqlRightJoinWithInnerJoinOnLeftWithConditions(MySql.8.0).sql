BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @id1 Int32
SET     @id1 = 1
DECLARE @id2 Int32
SET     @id2 = 2

SELECT
	`t1`.`Left_1`,
	`right_2`.`Right_1`
FROM
	(
		SELECT
			`p`.`Value1`,
			`p`.`ParentID` as `Left_1`
		FROM
			`Parent` `p`
		WHERE
			`p`.`ParentID` <> @id1
	) `t1`
		RIGHT JOIN (
			SELECT
				`right_1`.`ParentID` as `Right_1`,
				`right_1`.`Value1` + 2 as `c1`
			FROM
				`Parent` `right_1`
					INNER JOIN `Parent` `right2` ON `right_1`.`Value1` = `right2`.`Value1` + 2
			WHERE
				`right_1`.`ParentID` <> @id2 AND `right2`.`ParentID` <> @id1
		) `right_2` ON `right_2`.`c1` = `t1`.`Value1` OR `right_2`.`c1` IS NULL AND `t1`.`Value1` IS NULL
ORDER BY
	`t1`.`Left_1`

