BeforeExecute
-- MySql MySql.Official MySql
DECLARE @take Int32
SET     @take = 5

SELECT
	`g_2`.`c1`,
	Count(*)
FROM
	(
		SELECT
			Cast(CURRENT_TIMESTAMP as Date) as `c1`
		FROM
			`Parent` `g_1`
				INNER JOIN `Child` `s` ON `g_1`.`ParentID` = `s`.`ParentID`
		WHERE
			`g_1`.`Value1` > 0
	) `g_2`
GROUP BY
	`g_2`.`c1`
LIMIT @take

