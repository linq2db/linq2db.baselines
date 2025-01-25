BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1554Table`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue1554Table`
(
	`Id`              INT        NOT NULL,
	`ClaimedKeyType`  VARCHAR(3) NOT NULL,
	`ClaimedKeyTypeN` VARCHAR(3)     NULL,

	CONSTRAINT `PK_Issue1554Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 0
DECLARE @ClaimedKeyType VarChar(3) -- String
SET     @ClaimedKeyType = 'RSA'
DECLARE @ClaimedKeyTypeN VarChar(3) -- String
SET     @ClaimedKeyTypeN = 'RSA'

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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ClaimedKeyType VarChar(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN VarChar(2) -- String
SET     @ClaimedKeyTypeN = 'EC'

UPDATE
	`Issue1554Table` `p`
SET
	`p`.`ClaimedKeyType` = @ClaimedKeyType,
	`p`.`ClaimedKeyTypeN` = @ClaimedKeyTypeN
WHERE
	`p`.`Id` = 0

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`ClaimedKeyType`,
	`t1`.`ClaimedKeyTypeN`
FROM
	`Issue1554Table` `t1`
LIMIT 2

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1554Table`

