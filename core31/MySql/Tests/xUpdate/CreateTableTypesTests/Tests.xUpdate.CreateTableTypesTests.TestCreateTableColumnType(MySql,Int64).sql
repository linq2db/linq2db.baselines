BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `CreateTableTypes`
(
	`Id`    INT    NOT NULL,
	`Int64` BIGINT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Int64 Int64
SET     @Int64 = 0

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Int64`
)
VALUES
(
	@Id,
	@Int64
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Int64 Int64
SET     @Int64 = 3

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Int64`
)
VALUES
(
	@Id,
	@Int64
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `CreateTableTypes`

