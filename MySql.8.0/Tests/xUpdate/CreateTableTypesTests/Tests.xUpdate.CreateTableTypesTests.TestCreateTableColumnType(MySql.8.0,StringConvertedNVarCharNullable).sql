-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`StringConverted`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

