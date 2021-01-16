BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `CreateTableTypes`
(
	`String` VARCHAR(10) NOT NULL,
	`Id`     INT         NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @String VarChar -- String
SET     @String = ''

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`String`
)
VALUES
(
	@Id,
	@String
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @String VarChar(7) -- String
SET     @String = 'test 10'

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`String`
)
VALUES
(
	@Id,
	@String
)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `CreateTableTypes`

