BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @take Int32
SET     @take = 100

SELECT
	`t1`.`sort_1`,
	`t1`.`sort_1`
FROM
	(
		SELECT
			`r`.`PersonID` as `sort_1`
		FROM
			`Person` `r`
		GROUP BY
			`r`.`PersonID`,
			`r`.`PersonID`
	) `t1`
ORDER BY
	`t1`.`sort_1`
LIMIT @take

