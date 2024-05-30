BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue1107TB`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Issue1107TB`
(
	`Id`       INT      NOT NULL,
	`TestDate` DATETIME NOT NULL,

	CONSTRAINT `PK_Issue1107TB` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `Issue1107TB`
(
	`Id`,
	`TestDate`
)
VALUES
(0,'2018-01-01')

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue1107TB`

