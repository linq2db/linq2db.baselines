BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @search VarChar(5) -- String
SET     @search = 'test%'
DECLARE @search_1 VarChar(4) -- String
SET     @search_1 = 'test'
DECLARE @search_2 VarChar(5) -- String
SET     @search_2 = 'test%'

SELECT
	`row1`.`Id`
FROM
	`table1` `row1`
		INNER JOIN `table2` `row2` ON `row1`.`Id` = `row2`.`Table1Id`
WHERE
	`row2`.`Field2` LIKE @search ESCAPE '~'
UNION
SELECT
	`row1_1`.`Id`
FROM
	`table1` `row1_1`
		INNER JOIN `table3` `row3` ON `row1_1`.`Id` = `row3`.`Table1Id`
WHERE
	`row3`.`Field3` = @search_1
UNION
SELECT
	`row1_2`.`Id`
FROM
	`table1` `row1_2`
WHERE
	`row1_2`.`Field1` LIKE @search_2 ESCAPE '~'

