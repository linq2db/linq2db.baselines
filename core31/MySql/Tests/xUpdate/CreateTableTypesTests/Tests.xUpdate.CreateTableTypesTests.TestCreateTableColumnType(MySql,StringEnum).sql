BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `CreateTableTypes`
(
	`Id`         INT        NOT NULL,
	`StringEnum` VARCHAR(2) NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql

DROP TABLE `CreateTableTypes`

