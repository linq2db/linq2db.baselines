-- MariaDB.10.MySqlConnector MariaDB
DECLARE @DateTimeOffset Datetime -- DateTimeOffset
SET     @DateTimeOffset = '2020-02-29T17:54:55.1231234+00:00'
DECLARE @DateTimeOffsetN Datetime -- DateTimeOffset
SET     @DateTimeOffsetN = '2020-02-29T17:54:55.1231234+00:00'

UPDATE
	`Types` `x`
SET
	`x`.`DateTimeOffset` = @DateTimeOffset,
	`x`.`DateTimeOffsetN` = @DateTimeOffsetN
WHERE
	`x`.`Id` = 2



