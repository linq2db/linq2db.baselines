-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Elapsed Int64
SET     @Elapsed = 5400

INSERT INTO `DynamicDurationRow`
(
	`Id`,
	`Elapsed`
)
VALUES
(
	@Id,
	@Elapsed
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Elapsed`
FROM
	`DynamicDurationRow` `t1`
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	CAST(`r`.`Elapsed` AS DOUBLE) / 60
FROM
	`DynamicDurationRow` `r`
LIMIT 2

