BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `CreateTableTypes`
(
	`Id`              INT          NOT NULL,
	`StringConverted` VARCHAR(255)     NULL
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StringConverted VarChar(4) -- String
SET     @StringConverted = 'null'

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`StringConverted`
)
VALUES
(
	@Id,
	@StringConverted
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @StringConverted VarChar(53) -- String
SET     @StringConverted = '[{"Item1":1,"Item2":"one"},{"Item1":2,"Item2":"two"}]'

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`StringConverted`
)
VALUES
(
	@Id,
	@StringConverted
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`StringConverted`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `CreateTableTypes`

