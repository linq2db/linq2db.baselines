BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `CreateTableTypes`
(
	`Id`                 INT        NOT NULL,
	`StringEnumNullable` VARCHAR(2)     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StringEnumNullable VarChar -- String
SET     @StringEnumNullable = NULL

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`StringEnumNullable`
)
VALUES
(
	@Id,
	@StringEnumNullable
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @StringEnumNullable VarChar(2) -- String
SET     @StringEnumNullable = '40'

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`StringEnumNullable`
)
VALUES
(
	@Id,
	@StringEnumNullable
)

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `CreateTableTypes`

