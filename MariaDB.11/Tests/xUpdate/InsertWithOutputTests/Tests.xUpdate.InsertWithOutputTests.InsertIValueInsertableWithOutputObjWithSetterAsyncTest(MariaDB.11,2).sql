BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `TableWithData`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TableWithData`
(
	`Id`       INT         NOT NULL,
	`Value`    INT         NOT NULL,
	`ValueStr` VARCHAR(50)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @Value Int32
SET     @Value = 200
DECLARE @value_1 Int32
SET     @value_1 = 2
DECLARE @ValueStr VarChar(8) -- String
SET     @ValueStr = 'SomeStr2'

INSERT INTO `TableWithData`
(
	`Value`,
	`Id`,
	`ValueStr`
)
VALUES
(
	@Value,
	@value_1,
	@ValueStr
)
RETURNING
	`TableWithData`.`Id`,
	`TableWithData`.`Value`,
	`TableWithData`.`ValueStr`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `TableWithData`

