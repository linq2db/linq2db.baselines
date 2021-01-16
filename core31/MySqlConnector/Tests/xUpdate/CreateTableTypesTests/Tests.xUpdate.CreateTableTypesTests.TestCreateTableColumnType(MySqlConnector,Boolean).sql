BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `CreateTableTypes`
(
	`Id`      INT     NOT NULL,
	`Boolean` BOOLEAN NOT NULL
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Boolean_1 Bool -- Boolean
SET     @Boolean_1 = 0

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Boolean`
)
VALUES
(
	@Id,
	@Boolean_1
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Boolean_1 Bool -- Boolean
SET     @Boolean_1 = 1

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Boolean`
)
VALUES
(
	@Id,
	@Boolean_1
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `CreateTableTypes`

