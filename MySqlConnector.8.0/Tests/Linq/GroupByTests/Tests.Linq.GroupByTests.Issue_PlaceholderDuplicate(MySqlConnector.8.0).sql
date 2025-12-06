-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

