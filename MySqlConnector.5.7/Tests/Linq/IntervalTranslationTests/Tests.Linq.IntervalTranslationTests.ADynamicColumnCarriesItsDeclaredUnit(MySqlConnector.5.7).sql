-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Elapsed`
FROM
	`DynamicDurationRow` `t1`
LIMIT 2

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	CAST(`r`.`Elapsed` AS DECIMAL(29, 10)) / 60
FROM
	`DynamicDurationRow` `r`
LIMIT 2

