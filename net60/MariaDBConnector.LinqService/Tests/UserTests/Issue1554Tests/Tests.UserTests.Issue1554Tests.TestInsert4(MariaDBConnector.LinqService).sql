﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1554Table`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue1554Table`
(
	`Id`              INT        NOT NULL,
	`ClaimedKeyType`  VARCHAR(3) NOT NULL,
	`ClaimedKeyTypeN` VARCHAR(3)     NULL,

	CONSTRAINT `PK_Issue1554Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 0
DECLARE @ClaimedKeyType VarChar(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN VarChar(2) -- String
SET     @ClaimedKeyTypeN = 'EC'

INSERT INTO `Issue1554Table`
(
	`Id`,
	`ClaimedKeyType`,
	`ClaimedKeyTypeN`
)
VALUES
(
	@Id,
	@ClaimedKeyType,
	@ClaimedKeyTypeN
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`t1`.`Id`,
	`t1`.`ClaimedKeyType`,
	`t1`.`ClaimedKeyTypeN`
FROM
	`Issue1554Table` `t1`
LIMIT @take

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1554Table`

