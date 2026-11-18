-- MySql.8.0.MySqlConnector MySql80
DECLARE @DateTimeOffsetWithConverter Int64
SET     @DateTimeOffsetWithConverter = 1304956839836121088
DECLARE @DateTimeOffsetNWithConverter Int64
SET     @DateTimeOffsetNWithConverter = 1304956839836121088

UPDATE
	`Types` `x`
SET
	`x`.`DateTimeOffsetWithConverter` = @DateTimeOffsetWithConverter,
	`x`.`DateTimeOffsetNWithConverter` = @DateTimeOffsetNWithConverter
WHERE
	`x`.`Id` = 2



