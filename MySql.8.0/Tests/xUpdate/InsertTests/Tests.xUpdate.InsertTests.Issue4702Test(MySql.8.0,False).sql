BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4702Table`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue4702Table`
(
	`Id`   INT           AUTO_INCREMENT NOT NULL,
	`Text` VARCHAR(4000)                    NULL,

	CONSTRAINT `PK_Issue4702Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT Max(`Id`) FROM `Issue4702Table`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Issue4702Table`
(
	`Id`,
	`Text`
)
VALUES
(1,'Text 1'),
(2,'Text 2')

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Issue4702Table`
(
	`Text`
)
VALUES
(
	'Text 3'
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4702Table`

