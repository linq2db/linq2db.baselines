﻿BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Src`
(
	`Id`   INT        NOT NULL,
	`Int`  INT            NULL,
	`Enum` VARCHAR(5)     NULL
)

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` IN (NULL, NULL)

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` NOT IN (NULL, NULL)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

