-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`CollatedTable`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`CollatedTable` `r`
WHERE
	Lower(`r`.`CaseSensitive`) LIKE '%ststring' ESCAPE '~'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`CollatedTable` `r`
WHERE
	Lower(`r`.`CaseInsensitive`) LIKE '%ststring' ESCAPE '~'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`CollatedTable` `r`
WHERE
	Lower(`r`.`CaseSensitive`) LIKE '%ststring' ESCAPE '~'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`CollatedTable` `r`
WHERE
	Lower(`r`.`CaseInsensitive`) LIKE '%ststring' ESCAPE '~'

