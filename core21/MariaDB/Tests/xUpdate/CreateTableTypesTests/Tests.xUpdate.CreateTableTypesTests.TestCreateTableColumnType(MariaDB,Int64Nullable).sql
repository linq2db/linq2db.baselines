BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `CreateTableTypes`
(
	`Id`            INT    NOT NULL,
	`Int64Nullable` BIGINT     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Int64Nullable Int64
SET     @Int64Nullable = NULL

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Int64Nullable`
)
VALUES
(
	@Id,
	@Int64Nullable
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Int64Nullable Int64
SET     @Int64Nullable = 4

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Int64Nullable`
)
VALUES
(
	@Id,
	@Int64Nullable
)

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `CreateTableTypes`

