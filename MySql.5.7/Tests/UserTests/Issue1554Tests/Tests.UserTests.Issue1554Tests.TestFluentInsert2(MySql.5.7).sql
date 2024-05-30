BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue1554FluentTable`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Issue1554FluentTable`
(
	`Id`              INT        NOT NULL,
	`ClaimedKeyType`  VARCHAR(3) NOT NULL,
	`ClaimedKeyTypeN` VARCHAR(3)     NULL,

	CONSTRAINT `PK_Issue1554FluentTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 0
DECLARE @ClaimedKeyType VarChar(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN VarChar -- String
SET     @ClaimedKeyTypeN = NULL

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`ClaimedKeyType`,
	`t1`.`ClaimedKeyTypeN`
FROM
	`Issue1554FluentTable` `t1`
LIMIT 2

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue1554FluentTable`

