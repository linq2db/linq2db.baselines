-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij Int32
SET     @abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij = 1

SELECT
	`r`.`FirstName`,
	`r`.`PersonID`,
	`r`.`LastName`,
	`r`.`MiddleName`,
	`r`.`Gender`
FROM
	`Person` `r`
WHERE
	`r`.`PersonID` = @abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij

