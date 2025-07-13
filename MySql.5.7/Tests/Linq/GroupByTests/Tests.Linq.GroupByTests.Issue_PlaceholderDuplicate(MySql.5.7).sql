BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @take Int32
SET     @take = 100

SELECT
	`r`.`PersonID`,
	`r`.`PersonID`
FROM
	`Person` `r`
GROUP BY
	`r`.`PersonID`,
	`r`.`PersonID`
ORDER BY
	`r`.`PersonID`
LIMIT @take

