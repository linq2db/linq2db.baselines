﻿BeforeExecute
-- MySqlConnector MySql

DELETE `t1`
FROM
	`CollatedTable` `t1`

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`CollatedTable` `r`
WHERE
	LOCATE('ststring', Lower(`r`.`CaseSensitive`), Length(`r`.`CaseSensitive`) - 7) = (Length(`r`.`CaseSensitive`) - 7)

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`CollatedTable` `r`
WHERE
	LOCATE('ststring', Lower(`r`.`CaseInsensitive`), Length(`r`.`CaseInsensitive`) - 7) = (Length(`r`.`CaseInsensitive`) - 7)

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`CollatedTable` `r`
WHERE
	LOCATE('ststring', Lower(`r`.`CaseSensitive`), Length(`r`.`CaseSensitive`) - 7) = (Length(`r`.`CaseSensitive`) - 7)

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`CollatedTable` `r`
WHERE
	LOCATE('ststring', Lower(`r`.`CaseInsensitive`), Length(`r`.`CaseInsensitive`) - 7) = (Length(`r`.`CaseInsensitive`) - 7)

