-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value UInt32
SET     @Value = 123
DECLARE @Value2 VarChar -- String
SET     @Value2 = NULL

INSERT INTO `Issue3726Table`
(
	`Id`,
	`Value`,
	`Value2`
)
VALUES
(
	@Id,
	@Value,
	@Value2
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Value2 VarChar(3) -- String
SET     @Value2 = 'Baz'
DECLARE @bar Int32
SET     @bar = 123

UPDATE
	`Issue3726Table` `f`
SET
	`f`.`Value2` = @Value2
WHERE
	CAST(`f`.`Value` AS SIGNED) = @bar

