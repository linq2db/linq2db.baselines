﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Src`
(
	`Id`   INT        NOT NULL,
	`Int`  INT            NULL,
	`Enum` VARCHAR(5)     NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Int_1 Int32
SET     @Int_1 = NULL
DECLARE @Enum VarChar -- String
SET     @Enum = NULL

INSERT INTO `Src`
(
	`Id`,
	`Int`,
	`Enum`
)
VALUES
(
	@Id,
	@Int_1,
	@Enum
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Int_1 Int32
SET     @Int_1 = 2
DECLARE @Enum VarChar(3) -- String
SET     @Enum = 'TWO'

INSERT INTO `Src`
(
	`Id`,
	`Int`,
	`Enum`
)
VALUES
(
	@Id,
	@Int_1,
	@Enum
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	1 = 0

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	1 = 1

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	1 = 1

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

