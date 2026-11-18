-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @value VarChar(1) -- AnsiString
SET     @value = '+'

SELECT
	`r`.`Id`,
	`r`.`Value`
FROM
	`Issue2362Table` `r`
WHERE
	`r`.`Value` = @value
ORDER BY
	`r`.`Id`

