-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Count Int32
SET     @Count = 0

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @Count

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Count Int32
SET     @Count = 0

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @Count, 9223372036854775807

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Count Int32
SET     @Count = 0
DECLARE @p Int32
SET     @p = 1

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @Count, @p

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @count Int32
SET     @count = 0

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @count

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @count Int32
SET     @count = 0

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @count, 9223372036854775807

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Count Int32
SET     @Count = 0

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
LIMIT @Count, 1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 0

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @take

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 0

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @skip, 9223372036854775807

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 0
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
DECLARE @skip Int32
SET     @skip = 0

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
SET     @skip = 0

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
DECLARE @Count Int32
SET     @Count = 2

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @Count

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Count Int32
SET     @Count = 2

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @Count, 9223372036854775807

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Count Int32
SET     @Count = 2
DECLARE @p Int32
SET     @p = 3

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @Count, @p

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @count Int32
SET     @count = 2

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @count

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @count Int32
SET     @count = 2

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @count, 9223372036854775807

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Count Int32
SET     @Count = 2

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
LIMIT @Count, 1

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
DECLARE @skip Int32
SET     @skip = 2
DECLARE @take Int32
SET     @take = 3

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @skip, @take

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
DECLARE @Count Int32
SET     @Count = 0

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @Count

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Count Int32
SET     @Count = 0

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @Count, 9223372036854775807

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Count Int32
SET     @Count = 0
DECLARE @p Int32
SET     @p = 1

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @Count, @p

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @count Int32
SET     @count = 0

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @count

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @count Int32
SET     @count = 0

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @count, 9223372036854775807

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Count Int32
SET     @Count = 0

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
LIMIT @Count, 1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 0

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @take

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 0

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @skip, 9223372036854775807

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 0
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
DECLARE @skip Int32
SET     @skip = 0

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
SET     @skip = 0

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
DECLARE @Count Int32
SET     @Count = 1

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @Count

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Count Int32
SET     @Count = 1

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @Count, 9223372036854775807

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Count Int32
SET     @Count = 1
DECLARE @p Int32
SET     @p = 2

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @Count, @p

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @count Int32
SET     @count = 1

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @count

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @count Int32
SET     @count = 1

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @count, 9223372036854775807

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Count Int32
SET     @Count = 1

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
LIMIT @Count, 1

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
DECLARE @skip Int32
SET     @skip = 1

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @skip, 9223372036854775807

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @skip, @take

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
DECLARE @Count Int32
SET     @Count = 3

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @Count

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Count Int32
SET     @Count = 3

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @Count, 9223372036854775807

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Count Int32
SET     @Count = 3
DECLARE @p Int32
SET     @p = 4

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @Count, @p

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @count Int32
SET     @count = 3

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @count

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @count Int32
SET     @count = 3

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @count, 9223372036854775807

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Count Int32
SET     @Count = 3

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
LIMIT @Count, 1

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
DECLARE @skip Int32
SET     @skip = 3
DECLARE @take Int32
SET     @take = 4

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @skip, @take

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
DECLARE @Count Int32
SET     @Count = 0

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @Count

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Count Int32
SET     @Count = 0

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @Count, 9223372036854775807

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Count Int32
SET     @Count = 0
DECLARE @p Int32
SET     @p = 1

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @Count, @p

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @count Int32
SET     @count = 0

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @count

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @count Int32
SET     @count = 0

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @count, 9223372036854775807

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Count Int32
SET     @Count = 0

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
LIMIT @Count, 1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 0

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @take

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 0

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`
LIMIT @skip, 9223372036854775807

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 0
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
DECLARE @skip Int32
SET     @skip = 0

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
SET     @skip = 0

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

