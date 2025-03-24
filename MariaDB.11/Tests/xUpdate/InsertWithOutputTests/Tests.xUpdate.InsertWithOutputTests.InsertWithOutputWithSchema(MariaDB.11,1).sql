﻿BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value Int32
SET     @Value = 100
DECLARE @ValueStr VarChar(8) -- String
SET     @ValueStr = 'SomeStr1'

INSERT INTO `TableWithDataAndSchema`
(
	`Id`,
	`Value`,
	`ValueStr`
)
VALUES
(
	@Id,
	@Value,
	@ValueStr
)
RETURNING
	`TableWithDataAndSchema`.`Id`,
	`TableWithDataAndSchema`.`Value`,
	`TableWithDataAndSchema`.`ValueStr`

