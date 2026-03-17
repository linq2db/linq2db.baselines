-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 123
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'John'

INSERT INTO `TestInsertOrReplaceTable`
(
	`ID`,
	`FirstName`
)
VALUES
(
	@ID,
	@FirstName
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`TestInsertOrReplaceTable` `x`
WHERE
	`x`.`ID` = 123 AND `x`.`FirstName` = 'John'

