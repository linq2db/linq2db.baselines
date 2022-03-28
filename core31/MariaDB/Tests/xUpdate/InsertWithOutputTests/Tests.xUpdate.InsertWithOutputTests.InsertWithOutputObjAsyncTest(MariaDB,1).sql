﻿BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `TableWithData`
(
	`Id`       INT         NOT NULL,
	`Value`    INT         NOT NULL,
	`ValueStr` VARCHAR(50)     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql (asynchronously)
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value_1 Int32
SET     @Value_1 = 100
DECLARE @ValueStr VarChar(8) -- String
SET     @ValueStr = 'SomeStr1'

INSERT INTO `TableWithData`
(
	`Id`,
	`Value`,
	`ValueStr`
)
VALUES
(
	@Id,
	@Value_1,
	@ValueStr
)
RETURNING
	`TableWithData`.`Id`,
	`TableWithData`.`Value`,
	`TableWithData`.`ValueStr`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `TableWithData`

