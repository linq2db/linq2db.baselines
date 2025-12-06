-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`RowNumber`,
	`r_1`.`PersonID`
FROM
	(
		SELECT
			`r`.`PersonID` as `ID`,
			ROW_NUMBER() OVER(ORDER BY `r`.`FirstName`) as `RowNumber`
		FROM
			`Person` `r`
	) `t1`
		INNER JOIN `Person` `r_1` ON `t1`.`ID` = `r_1`.`PersonID`
WHERE
	`r_1`.`PersonID` = 2
LIMIT 2

