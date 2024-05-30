BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @s VarChar(7) -- String
SET     @s = '123n456'

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND LOCATE('n', @s) > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @s VarChar(7) -- String
SET     @s = '123n456'

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND LOCATE('n', @s) <= 0

