BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE   `t1`
FROM
	`CollatedTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Count(*)
FROM
	`CollatedTable` `r`
WHERE
	Lower(`r`.`CaseSensitive`) LIKE 'testst%' ESCAPE '~'

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Count(*)
FROM
	`CollatedTable` `r`
WHERE
	Lower(`r`.`CaseInsensitive`) LIKE 'testst%' ESCAPE '~'

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Count(*)
FROM
	`CollatedTable` `r`
WHERE
	Lower(`r`.`CaseSensitive`) LIKE 'testst%' ESCAPE '~'

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Count(*)
FROM
	`CollatedTable` `r`
WHERE
	Lower(`r`.`CaseInsensitive`) LIKE 'testst%' ESCAPE '~'

