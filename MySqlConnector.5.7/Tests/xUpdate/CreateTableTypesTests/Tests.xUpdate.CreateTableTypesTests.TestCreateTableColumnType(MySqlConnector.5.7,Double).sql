-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Double Double
SET     @Double = 0

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Double`
)
VALUES
(
	@Id,
	@Double
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Double Double
SET     @Double = 3.1400000000000001

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Double`
)
VALUES
(
	@Id,
	@Double
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Double`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

