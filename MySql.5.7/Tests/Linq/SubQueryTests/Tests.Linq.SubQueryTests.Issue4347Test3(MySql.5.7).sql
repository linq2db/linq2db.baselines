BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `TransactionEntity`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `TransactionEntity`
(
	`Id`      CHAR(36) NOT NULL,
	`ValidOn` DATETIME NOT NULL,

	CONSTRAINT `PK_TransactionEntity` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `LineEntity`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `LineEntity`
(
	`Id`            CHAR(36)        NOT NULL,
	`TransactionId` CHAR(36)        NOT NULL,
	`Amount`        DECIMAL(29, 10) NOT NULL,
	`Currency`      VARCHAR(4000)       NULL,

	CONSTRAINT `PK_LineEntity` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `LineEntity`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `TransactionEntity`

