BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `Issue1554FluentTable`
(
	`Id`              INT          NOT NULL,
	`ClaimedKeyType`  VARCHAR(255) NOT NULL,
	`ClaimedKeyTypeN` VARCHAR(255)     NULL,

	CONSTRAINT `PK_Issue1554FluentTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 0
DECLARE @ClaimedKeyType VarChar(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN VarChar(2) -- String
SET     @ClaimedKeyTypeN = 'EC'

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
-- MariaDB MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`t1`.`Id`,
	`t1`.`ClaimedKeyType`,
	`t1`.`ClaimedKeyTypeN`
FROM
	`Issue1554FluentTable` `t1`
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `Issue1554FluentTable`

