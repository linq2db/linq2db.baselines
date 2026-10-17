-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 1

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @take

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @n Int32
SET     @n = 1

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @n

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 1

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @skip, @take

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @n Int32
SET     @n = 1

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @n, 9223372036854775807

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 1

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`
ORDER BY
	`t1`.`PersonID`
LIMIT @skip, 1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @n Int32
SET     @n = 1

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`
ORDER BY
	`t1`.`PersonID`
LIMIT @n, 1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 1

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`
ORDER BY
	`t1`.`PersonID`
LIMIT @skip, 1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 2

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @skip, 9223372036854775807

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 1

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @take

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 2

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @take

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @n Int32
SET     @n = 2

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @n

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 2
DECLARE @take Int32
SET     @take = 1

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @skip, @take

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @n Int32
SET     @n = 2

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @n, 9223372036854775807

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 2

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`
ORDER BY
	`t1`.`PersonID`
LIMIT @skip, 1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @n Int32
SET     @n = 2

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`
ORDER BY
	`t1`.`PersonID`
LIMIT @n, 1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 2

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`
ORDER BY
	`t1`.`PersonID`
LIMIT @skip, 1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 3

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @skip, 9223372036854775807

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 2

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @take

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 3

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @take

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @n Int32
SET     @n = 3

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @n

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 3
DECLARE @take Int32
SET     @take = 1

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @skip, @take

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @n Int32
SET     @n = 3

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @n, 9223372036854775807

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 3

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`
ORDER BY
	`t1`.`PersonID`
LIMIT @skip, 1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @n Int32
SET     @n = 3

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`
ORDER BY
	`t1`.`PersonID`
LIMIT @n, 1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 3

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`
ORDER BY
	`t1`.`PersonID`
LIMIT @skip, 1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 4

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @skip, 9223372036854775807

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 3

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @take

