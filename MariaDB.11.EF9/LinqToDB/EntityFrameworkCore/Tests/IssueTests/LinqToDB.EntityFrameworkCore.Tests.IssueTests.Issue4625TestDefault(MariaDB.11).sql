-- MariaDB.10.MySqlConnector MariaDB
DECLARE @DateTimeOffset Datetime -- DateTimeOffset
SET     @DateTimeOffset = CONVERT_TZ('2020-02-29 17:54:55.123123', '+00:00', 'UTC')
DECLARE @DateTimeOffsetN Datetime -- DateTimeOffset
SET     @DateTimeOffsetN = CONVERT_TZ('2020-02-29 17:54:55.123123', '+00:00', 'UTC')

UPDATE
	`Types` `x`
SET
	`x`.`DateTimeOffset` = @DateTimeOffset,
	`x`.`DateTimeOffsetN` = @DateTimeOffsetN
WHERE
	`x`.`Id` = 2



