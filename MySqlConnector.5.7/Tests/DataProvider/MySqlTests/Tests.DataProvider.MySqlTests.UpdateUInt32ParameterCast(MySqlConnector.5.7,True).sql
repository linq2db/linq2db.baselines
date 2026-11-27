-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value UInt32
SET     @Value = 123
DECLARE @Value2 VarChar -- String
SET     @Value2 = NULL

INSERT INTO `UIntValueTable`
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
UPDATE
	`UIntValueTable` `f`
SET
	`f`.`Value2` = 'Baz'
WHERE
	CAST(`f`.`Value` AS SIGNED) = 123

