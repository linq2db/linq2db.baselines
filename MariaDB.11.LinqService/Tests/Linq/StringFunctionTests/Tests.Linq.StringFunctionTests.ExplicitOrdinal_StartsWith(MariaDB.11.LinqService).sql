BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE  
FROM
	`CollatedTable`

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
	COUNT(*)
FROM
	`CollatedTable` `r`
WHERE
	`r`.`CaseSensitive` COLLATE utf8_bin LIKE 'TestSt%' ESCAPE '~'

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`CollatedTable` `r`
WHERE
	`r`.`CaseInsensitive` COLLATE utf8_bin LIKE 'TestSt%' ESCAPE '~'

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`CollatedTable` `r`
WHERE
	`r`.`CaseSensitive` COLLATE utf8_bin LIKE 'testst%' ESCAPE '~'

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`CollatedTable` `r`
WHERE
	`r`.`CaseInsensitive` COLLATE utf8_bin LIKE 'testst%' ESCAPE '~'

