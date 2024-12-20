BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue2816Table`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue2816Table`
(
	`Id`   INT           NOT NULL,
	`Text` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_Issue2816Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Issue2816Table`
(
	`Id`,
	`Text`
)
VALUES
(0,''),
(1,'a'),
(2,' m '),
(3,' '),
(4,'  '),
(5,NULL)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`Id`,
	`p`.`Text`
FROM
	`Issue2816Table` `p`
WHERE
	`p`.`Text` IS NULL OR NOT `p`.`Text` RLIKE '[^	
                 　]'

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Text`
FROM
	`Issue2816Table` `t1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue2816Table`

