﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE   `_`
FROM
	`Person` `_`
WHERE
	`_`.`FirstName` LIKE 'Insert15%' ESCAPE '~'

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Count(*)
FROM
	`Person` `_`
WHERE
	`_`.`FirstName` LIKE 'Insert15%' ESCAPE '~'

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE   `_`
FROM
	`Person` `_`
WHERE
	`_`.`FirstName` LIKE 'Insert15%' ESCAPE '~'

