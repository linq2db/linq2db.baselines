BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value3___'
DECLARE @In_1 VarChar(12) -- AnsiString
SET     @In_1 = '___Value4___'

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`CEnum` IN (@In, @In_1)
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value3___'
DECLARE @In_1 VarChar -- AnsiString
SET     @In_1 = NULL

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`CEnum` IN (@In, @In_1)
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value3___'
DECLARE @In_1 VarChar(12) -- AnsiString
SET     @In_1 = '___Value2___'

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`CEnum` IN (@In, @In_1)
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @NotIn VarChar -- AnsiString
SET     @NotIn = NULL
DECLARE @NotIn_1 VarChar(12) -- AnsiString
SET     @NotIn_1 = '___Value2___'

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`CEnum` NOT IN (@NotIn, @NotIn_1)
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @NotIn VarChar(12) -- AnsiString
SET     @NotIn = '___Value3___'
DECLARE @NotIn_1 VarChar(12) -- AnsiString
SET     @NotIn_1 = '___Value2___'

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`CEnum` NOT IN (@NotIn, @NotIn_1)
LIMIT 1

