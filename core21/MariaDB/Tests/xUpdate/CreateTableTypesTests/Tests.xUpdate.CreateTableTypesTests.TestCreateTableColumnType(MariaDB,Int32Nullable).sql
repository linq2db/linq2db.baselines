BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `CreateTableTypes`
(
	`Id`            INT NOT NULL,
	`Int32Nullable` INT     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql
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
-- MariaDB MySql.Official MySql
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
-- MariaDB MySql.Official MySql

DROP TABLE `CreateTableTypes`

