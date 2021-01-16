BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `CreateTableTypes`
(
	`Id`      INT NOT NULL,
	`IntEnum` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @IntEnum Int32
SET     @IntEnum = 11

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`IntEnum`
)
VALUES
(
	@Id,
	@IntEnum
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @IntEnum Int32
SET     @IntEnum = 60

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`IntEnum`
)
VALUES
(
	@Id,
	@IntEnum
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `CreateTableTypes`

