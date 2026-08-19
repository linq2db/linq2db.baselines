-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Declared_Elapsed Int64
SET     @Declared_Elapsed = 5400
DECLARE @Converted_Elapsed Int64
SET     @Converted_Elapsed = 5400

INSERT INTO `NestedDurationRow`
(
	`Id`,
	`Declared`,
	`Converted`
)
VALUES
(
	@Id,
	@Declared_Elapsed,
	@Converted_Elapsed
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Declared`,
	`t1`.`Converted`
FROM
	`NestedDurationRow` `t1`
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	CAST(`r`.`Declared` AS DOUBLE) / 60
FROM
	`NestedDurationRow` `r`
LIMIT 2

