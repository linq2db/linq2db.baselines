BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`b_1`.`Date_2`,
	COUNT(*)
FROM
	(
		SELECT
			Date(`b`.`DateTimeValue`) as `Date_1`,
			Date(`b`.`DateTimeValue`) as `Date_2`
		FROM
			`LinqDataTypes` `b`
				INNER JOIN `Parent` `p` ON `b`.`ID` = `p`.`ParentID`
	) `b_1`
GROUP BY
	`b_1`.`Date_1`,
	`b_1`.`Date_2`

