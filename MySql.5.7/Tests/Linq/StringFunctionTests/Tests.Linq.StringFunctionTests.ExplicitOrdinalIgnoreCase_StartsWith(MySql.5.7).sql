﻿BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`CollatedTable`

BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @CaseSensitive VarChar(10) -- String
SET     @CaseSensitive = 'TestString'
DECLARE @CaseInsensitive VarChar(10) -- String
SET     @CaseInsensitive = 'TestString'

INSERT INTO `CollatedTable`
(
	`Id`,
	`CaseSensitive`,
	`CaseInsensitive`
)
VALUES
(
	@Id,
	@CaseSensitive,
	@CaseInsensitive
)

BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`CollatedTable` `r`
WHERE
	Lower(`r`.`CaseSensitive`) LIKE 'testst%' ESCAPE '~'

BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`CollatedTable` `r`
WHERE
	Lower(`r`.`CaseInsensitive`) LIKE 'testst%' ESCAPE '~'

BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`CollatedTable` `r`
WHERE
	Lower(`r`.`CaseSensitive`) LIKE 'testst%' ESCAPE '~'

BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`CollatedTable` `r`
WHERE
	Lower(`r`.`CaseInsensitive`) LIKE 'testst%' ESCAPE '~'

