BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`ID`,
	Sum(`t1`.`Max_1`)
FROM
	(
		SELECT
			`p`.`ParentID` as `ID`,
			Max(`p`.`Value1`) as `Max_1`
		FROM
			`Parent` `p`
		WHERE
			`p`.`Value1` IS NOT NULL
		GROUP BY
			`p`.`ParentID`
	) `t1`
GROUP BY
	`t1`.`ID`

