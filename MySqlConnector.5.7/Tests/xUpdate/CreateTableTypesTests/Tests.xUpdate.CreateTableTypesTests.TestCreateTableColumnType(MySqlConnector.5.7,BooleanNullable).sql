-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @BooleanNullable Bool -- Boolean
SET     @BooleanNullable = NULL

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`BooleanNullable`
)
VALUES
(
	@Id,
	@BooleanNullable
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @BooleanNullable Bool -- Boolean
SET     @BooleanNullable = 1

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`BooleanNullable`
)
VALUES
(
	@Id,
	@BooleanNullable
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`BooleanNullable`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

