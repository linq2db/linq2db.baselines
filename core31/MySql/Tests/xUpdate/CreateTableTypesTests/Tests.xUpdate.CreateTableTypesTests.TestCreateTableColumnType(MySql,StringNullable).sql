BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `CreateTableTypes`
(
	`String` VARCHAR(255)     NULL,
	`Id`     INT          NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @String VarChar -- String
SET     @String = NULL

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
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @String VarChar(23) -- String
SET     @String = 'test max value nullable'

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
-- MySql MySql.Official MySql

DROP TABLE `CreateTableTypes`

