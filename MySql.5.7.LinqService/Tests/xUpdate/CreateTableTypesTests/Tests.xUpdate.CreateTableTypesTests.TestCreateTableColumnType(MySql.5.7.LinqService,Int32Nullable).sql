BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `CreateTableTypes`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `CreateTableTypes`
(
	`Id`            INT NOT NULL,
	`Int32Nullable` INT     NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Int32Nullable`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `CreateTableTypes`

