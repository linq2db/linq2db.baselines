BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `t1`
FROM
	`CollatedTable` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql
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
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	`CollatedTable` `r`
WHERE
	`r`.`CaseSensitive` LIKE '%stString' ESCAPE '~'

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	`CollatedTable` `r`
WHERE
	`r`.`CaseInsensitive` LIKE '%stString' ESCAPE '~'

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	`CollatedTable` `r`
WHERE
	`r`.`CaseSensitive` LIKE '%ststring' ESCAPE '~'

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	`CollatedTable` `r`
WHERE
	`r`.`CaseInsensitive` LIKE '%ststring' ESCAPE '~'

