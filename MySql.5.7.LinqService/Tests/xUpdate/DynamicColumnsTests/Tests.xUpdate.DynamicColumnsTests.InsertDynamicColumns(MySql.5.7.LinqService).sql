BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName VarChar(11) -- String
SET     @LastName = 'The Dynamic'
DECLARE @Gender String(1) -- StringFixedLength
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Person` `c_1`
WHERE
	`c_1`.`FirstName` = 'John' AND `c_1`.`LastName` = 'The Dynamic'

