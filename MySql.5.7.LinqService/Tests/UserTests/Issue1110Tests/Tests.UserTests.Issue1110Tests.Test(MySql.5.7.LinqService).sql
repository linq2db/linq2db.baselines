BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue1110TB`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Issue1110TB`
(
	`Id`        INT      NOT NULL,
	`TimeStamp` DATETIME NOT NULL,

	CONSTRAINT `PK_Issue1110TB` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 10
DECLARE @TimeStamp Datetime -- DateTime
SET     @TimeStamp = '2020-02-29 17:54:55.123'

INSERT INTO `Issue1110TB`
(
	`Id`,
	`TimeStamp`
)
VALUES
(
	@Id,
	@TimeStamp
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue1110TB`

