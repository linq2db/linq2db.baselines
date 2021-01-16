BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `CreateTableTypes`
(
	`Id`      INT NOT NULL,
	`IntEnum` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @IntEnum Int32
SET     @IntEnum = 11

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`IntEnum`
)
VALUES
(
	@Id,
	@IntEnum
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @IntEnum Int32
SET     @IntEnum = 60

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`IntEnum`
)
VALUES
(
	@Id,
	@IntEnum
)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `CreateTableTypes`

