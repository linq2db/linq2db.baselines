BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `Issue1554Table`
(
	`Id`              INT          NOT NULL,
	`ClaimedKeyType`  VARCHAR(255) NOT NULL,
	`ClaimedKeyTypeN` VARCHAR(255)     NULL,

	CONSTRAINT `PK_Issue1554Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql

DROP TABLE `Issue1554Table`

