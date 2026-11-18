-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @p Int32
SET     @p = 2

SELECT
	`p`.`PersonID`
FROM
	(
		SELECT * FROM Person WHERE PersonID = @p
	) `p`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @p Int32
SET     @p = 1
DECLARE @byName Int32
SET     @byName = 2

SELECT
	`p`.`PersonID`
FROM
	(
		SELECT * FROM Person WHERE PersonID = @p OR PersonID = @byName
	) `p`
ORDER BY
	`p`.`PersonID`

