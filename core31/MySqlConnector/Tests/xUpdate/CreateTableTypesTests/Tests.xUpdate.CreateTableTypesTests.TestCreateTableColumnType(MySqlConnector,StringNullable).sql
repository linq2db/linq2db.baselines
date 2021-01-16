BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `CreateTableTypes`
(
	`String` VARCHAR(255)     NULL,
	`Id`     INT          NOT NULL
)

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql

DROP TABLE `CreateTableTypes`

