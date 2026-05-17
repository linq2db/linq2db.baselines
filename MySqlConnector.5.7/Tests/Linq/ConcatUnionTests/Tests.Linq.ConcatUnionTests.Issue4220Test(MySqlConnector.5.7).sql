-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @AOnly VarChar(6) -- String
SET     @AOnly = 'a only'

INSERT INTO `ConcreteA`
(
	`Id`,
	`AOnly`
)
VALUES
(
	@Id,
	@AOnly
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @BOnly VarChar(6) -- String
SET     @BOnly = 'b only'

INSERT INTO `ConcreteB`
(
	`Id`,
	`BOnly`
)
VALUES
(
	@Id,
	@BOnly
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`e`.`Id`,
	`e`.`AOnly`,
	CAST(NULL AS SIGNED),
	CAST(NULL AS CHAR(255))
FROM
	`ConcreteA` `e`
UNION ALL
SELECT
	CAST(NULL AS SIGNED),
	CAST(NULL AS CHAR(255)),
	`e_1`.`Id`,
	`e_1`.`BOnly`
FROM
	`ConcreteB` `e_1`

