BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE   `_`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` > 4

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName VarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`Gender`
)
VALUES
(
	@FirstName,
	@LastName,
	@Gender
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE   `_`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` > 4

