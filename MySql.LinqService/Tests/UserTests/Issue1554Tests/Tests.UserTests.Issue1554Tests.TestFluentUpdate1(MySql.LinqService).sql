BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue1554FluentTable`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Issue1554FluentTable`
(
	`Id`              INT        NOT NULL,
	`ClaimedKeyType`  VARCHAR(3) NOT NULL,
	`ClaimedKeyTypeN` VARCHAR(3)     NULL,

	CONSTRAINT `PK_Issue1554FluentTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 0
DECLARE @ClaimedKeyType VarChar(3) -- String
SET     @ClaimedKeyType = 'RSA'
DECLARE @ClaimedKeyTypeN VarChar(3) -- String
SET     @ClaimedKeyTypeN = 'RSA'

INSERT INTO `Issue1554FluentTable`
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
-- MySql MySql.Official MySql

UPDATE
	`Issue1554FluentTable` `p`
SET
	`p`.`ClaimedKeyType` = 'EC',
	`p`.`ClaimedKeyTypeN` = 'EC'
WHERE
	`p`.`Id` = 0

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`ClaimedKeyType`,
	`t1`.`ClaimedKeyTypeN`
FROM
	`Issue1554FluentTable` `t1`
LIMIT 2

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue1554FluentTable`

