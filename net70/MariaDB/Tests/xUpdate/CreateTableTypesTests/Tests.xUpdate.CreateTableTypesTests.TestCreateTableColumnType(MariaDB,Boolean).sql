BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `CreateTableTypes`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `CreateTableTypes`
(
	`Id`      INT     NOT NULL,
	`Boolean` BOOLEAN NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Boolean Bool -- Boolean
SET     @Boolean = 0

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Boolean`
)
VALUES
(
	@Id,
	@Boolean
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Boolean Bool -- Boolean
SET     @Boolean = 1

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Boolean`
)
VALUES
(
	@Id,
	@Boolean
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Boolean`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `CreateTableTypes`

