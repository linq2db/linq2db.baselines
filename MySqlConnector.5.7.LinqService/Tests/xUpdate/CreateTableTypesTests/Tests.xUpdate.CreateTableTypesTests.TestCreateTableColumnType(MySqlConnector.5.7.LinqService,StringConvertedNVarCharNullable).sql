BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`StringConverted`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

