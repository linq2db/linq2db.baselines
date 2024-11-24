BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `ConcreteA`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `ConcreteA`
(
	`Id`    INT           NOT NULL,
	`AOnly` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_ConcreteA` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `ConcreteB`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `ConcreteB`
(
	`Id`    INT           NOT NULL,
	`BOnly` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_ConcreteB` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`e`.`Id`,
	`e`.`AOnly`,
	NULL,
	NULL
FROM
	`ConcreteA` `e`
UNION ALL
SELECT
	NULL,
	NULL,
	`e_1`.`Id`,
	`e_1`.`BOnly`
FROM
	`ConcreteB` `e_1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `ConcreteB`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `ConcreteA`

