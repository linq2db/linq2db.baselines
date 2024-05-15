BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @p VarChar(3) -- String
SET     @p = '123'

SELECT
	`p`.`PersonID`,
	Concat('123', `p`.`FirstName`, '0123451234')
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND 1 = Locate('321', Reverse(Substring(Concat('123', `p`.`FirstName`, '0123451234'), 6, 6))) AND
	Locate(@p, Left(Concat('123', `p`.`FirstName`, '0123451234'), 11), 6) <> 0

