﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE `TableWithData`
(
	`Id`       INT         NOT NULL,
	`Value`    INT         NOT NULL,
	`ValueStr` VARCHAR(50)     NULL
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql (asynchronously)
DECLARE @Value_1 Int32
SET     @Value_1 = 200
DECLARE @value_2 Int32
SET     @value_2 = 2
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
	@Value_1,
	@value_2,
	@ValueStr
)
RETURNING
	`TableWithData`.`Id`,
	`TableWithData`.`Value`,
	`TableWithData`.`ValueStr`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `TableWithData`

