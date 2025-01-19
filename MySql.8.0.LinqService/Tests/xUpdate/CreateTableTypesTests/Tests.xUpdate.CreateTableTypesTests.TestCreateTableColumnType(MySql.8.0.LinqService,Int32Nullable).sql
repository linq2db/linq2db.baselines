BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Int32Nullable Int32
SET     @Int32Nullable = NULL

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Int32Nullable`
)
VALUES
(
	@Id,
	@Int32Nullable
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Int32Nullable Int32
SET     @Int32Nullable = 2

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Int32Nullable`
)
VALUES
(
	@Id,
	@Int32Nullable
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Int32Nullable`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

