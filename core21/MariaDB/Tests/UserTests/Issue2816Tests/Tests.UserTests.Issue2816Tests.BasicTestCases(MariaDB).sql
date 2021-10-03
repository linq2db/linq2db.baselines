BeforeExecute
-- MariaDB MySql

DROP TABLE IF EXISTS `Issue2816Table`

BeforeExecute
-- MariaDB MySql

CREATE TABLE IF NOT EXISTS `Issue2816Table`
(
	`Id`   INT          NOT NULL,
	`Text` VARCHAR(255)     NULL,

	CONSTRAINT `PK_Issue2816Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySql

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
-- MariaDB MySql

SELECT
	`p`.`Id`,
	`p`.`Text`
FROM
	`Issue2816Table` `p`
WHERE
	(`p`.`Text` IS NULL OR NOT `p`.`Text` RLIKE '[^	
                 　]')

BeforeExecute
-- MariaDB MySql

SELECT
	`t1`.`Id`,
	`t1`.`Text`
FROM
	`Issue2816Table` `t1`

BeforeExecute
-- MariaDB MySql

DROP TABLE IF EXISTS `Issue2816Table`

