BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Issue2816Table`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Issue2816Table`
(
	`Id`   INT          NOT NULL,
	`Text` VARCHAR(255)     NULL,

	CONSTRAINT `PK_Issue2816Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `Issue2816Table`
(
	`Id`,
	`Text`
)
VALUES
(0,'a'),
(1,' m '),
(2,' '),
(3,'  '),
(4,NULL)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`p`.`Id`,
	`p`.`Text`
FROM
	`Issue2816Table` `p`
WHERE
	(`p`.`Text` IS NULL OR NOT(`p`.`Text` RLIKE '[^	
                 　]'))

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Text`
FROM
	`Issue2816Table` `t1`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Issue2816Table`

