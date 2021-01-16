BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `CreateTableTypes`
(
	`Id`              INT NOT NULL,
	`IntEnumNullable` INT     NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @IntEnumNullable Int32
SET     @IntEnumNullable = NULL

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`IntEnumNullable`
)
VALUES
(
	@Id,
	@IntEnumNullable
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @IntEnumNullable Int32
SET     @IntEnumNullable = 60

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`IntEnumNullable`
)
VALUES
(
	@Id,
	@IntEnumNullable
)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `CreateTableTypes`

