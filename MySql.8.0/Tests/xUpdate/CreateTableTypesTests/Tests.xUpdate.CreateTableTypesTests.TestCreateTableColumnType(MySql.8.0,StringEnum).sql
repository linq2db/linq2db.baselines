BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StringEnum VarChar(2) -- String
SET     @StringEnum = '14'

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`StringEnum`
)
VALUES
(
	@Id,
	@StringEnum
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @StringEnum VarChar(1) -- String
SET     @StringEnum = '4'

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`StringEnum`
)
VALUES
(
	@Id,
	@StringEnum
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`StringEnum`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

