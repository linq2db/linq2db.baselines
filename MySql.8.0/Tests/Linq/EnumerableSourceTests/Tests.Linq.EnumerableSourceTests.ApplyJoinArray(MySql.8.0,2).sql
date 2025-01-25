BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @doe VarChar(3) -- String
SET     @doe = 'Doe'

SELECT
	`n`.`item`
FROM
	`Person` `p`
		INNER JOIN LATERAL (
			SELECT `p`.`FirstName` AS `item`
			UNION ALL
			SELECT `p`.`LastName`
			UNION ALL
			SELECT 'John'
			UNION ALL
			SELECT @doe) `n` ON 1=1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @doe VarChar(4) -- String
SET     @doe = 'Doe1'

SELECT
	`n`.`item`
FROM
	`Person` `p`
		INNER JOIN LATERAL (
			SELECT `p`.`FirstName` AS `item`
			UNION ALL
			SELECT `p`.`LastName`
			UNION ALL
			SELECT 'John'
			UNION ALL
			SELECT @doe) `n` ON 1=1

