BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue4702Table`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Issue4702Table`
(
	`Id`   INT           AUTO_INCREMENT NOT NULL,
	`Text` VARCHAR(4000)                    NULL,

	CONSTRAINT `PK_Issue4702Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT Max(`Id`) FROM `Issue4702Table`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `Issue4702Table`
(
	`Id`,
	`Text`
)
VALUES
(1,'Text 1'),
(2,'Text 2')

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `Issue4702Table`
(
	`Text`
)
VALUES
(
	'Text 3'
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue4702Table`

