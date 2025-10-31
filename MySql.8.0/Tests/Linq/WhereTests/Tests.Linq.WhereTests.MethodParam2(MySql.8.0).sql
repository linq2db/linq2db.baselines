-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @p Int32
SET     @p = 1

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = @p

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @p Int32
SET     @p = 2

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = @p

