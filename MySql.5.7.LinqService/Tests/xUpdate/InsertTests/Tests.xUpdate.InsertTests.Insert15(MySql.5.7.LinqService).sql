﻿BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`Person`
WHERE
	`Person`.`FirstName` LIKE 'Insert15%' ESCAPE '~'

BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Gender String(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @Name_FirstName VarChar(8) -- String
SET     @Name_FirstName = 'Insert15'
DECLARE @Name_MiddleName VarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName VarChar(8) -- String
SET     @Name_LastName = 'Insert15'

INSERT INTO `Person`
(
	`Gender`,
	`FirstName`,
	`MiddleName`,
	`LastName`
)
VALUES
(
	@Gender,
	@Name_FirstName,
	@Name_MiddleName,
	@Name_LastName
)

BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Person` `t1`
WHERE
	`t1`.`FirstName` LIKE 'Insert15%' ESCAPE '~'

BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`Person`
WHERE
	`Person`.`FirstName` LIKE 'Insert15%' ESCAPE '~'

