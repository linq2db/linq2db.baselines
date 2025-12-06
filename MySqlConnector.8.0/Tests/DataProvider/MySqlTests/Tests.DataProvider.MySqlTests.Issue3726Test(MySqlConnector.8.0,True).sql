-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

UPDATE
	`Issue3726Table` `f`
SET
	`f`.`Value2` = 'Baz'
WHERE
	CAST(`f`.`Value` AS SIGNED) = 123

