-- MySql.8.0.MySqlConnector MySql80
DECLARE @DateTimeOffsetWithConverter Int64
SET     @DateTimeOffsetWithConverter = CAST(1304956839836121088 AS SIGNED)
DECLARE @DateTimeOffsetNWithConverter Int64
SET     @DateTimeOffsetNWithConverter = '2020-02-29T17:54:55.1231234+00:00'

UPDATE
	`Types` `x`
SET
	`x`.`DateTimeOffsetWithConverter` = @DateTimeOffsetWithConverter,
	`x`.`DateTimeOffsetNWithConverter` = @DateTimeOffsetNWithConverter
WHERE
	`x`.`Id` = 2



