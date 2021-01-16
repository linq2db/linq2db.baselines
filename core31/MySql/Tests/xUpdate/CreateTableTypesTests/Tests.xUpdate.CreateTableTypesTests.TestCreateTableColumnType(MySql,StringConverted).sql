BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `CreateTableTypes`
(
	`StringConverted` VARCHAR(255) NOT NULL,
	`Id`              INT          NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StringConverted VarChar(4) -- String
SET     @StringConverted = 'null'

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`StringConverted`
)
VALUES
(
	@Id,
	@StringConverted
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @StringConverted VarChar(53) -- String
SET     @StringConverted = '[{"Item1":1,"Item2":"one"},{"Item1":2,"Item2":"two"}]'

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`StringConverted`
)
VALUES
(
	@Id,
	@StringConverted
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `CreateTableTypes`

