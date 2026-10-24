-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @p VarChar(1) -- String
SET     @p = 'X'
DECLARE @p_1 Int32
SET     @p_1 = 1

SELECT
	`p`.`PersonID`
FROM
	(
		SELECT * FROM Person WHERE (PersonID = @p_1 OR PersonID = @p_1) AND LastName <> @p
	) `p`

