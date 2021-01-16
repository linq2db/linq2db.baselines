BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `CreateTableTypes`
(
	`Id`    INT NOT NULL,
	`Int32` INT NOT NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Int32 Int32
SET     @Int32 = 0

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Int32`
)
VALUES
(
	@Id,
	@Int32
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Int32 Int32
SET     @Int32 = 1

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Int32`
)
VALUES
(
	@Id,
	@Int32
)

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `CreateTableTypes`

