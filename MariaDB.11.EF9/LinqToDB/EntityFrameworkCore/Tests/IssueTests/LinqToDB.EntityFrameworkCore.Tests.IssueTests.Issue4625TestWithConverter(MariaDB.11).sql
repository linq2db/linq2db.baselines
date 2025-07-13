-- MariaDB.10.MySqlConnector MySql
DECLARE @DateTimeOffsetWithConverter Int64
SET     @DateTimeOffsetWithConverter = 1304956839836121088
DECLARE @DateTimeOffsetNWithConverter Int64
SET     @DateTimeOffsetNWithConverter = '2020-02-29T17:54:55.1231234+00:00'

UPDATE
	`Types` `x`
SET
	`x`.`DateTimeOffsetWithConverter` = @DateTimeOffsetWithConverter,
	`x`.`DateTimeOffsetNWithConverter` = @DateTimeOffsetNWithConverter
WHERE
	`x`.`Id` = 2



