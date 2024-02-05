BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue2816Table`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue2816Table`
(
	`Id`   INT           NOT NULL,
	`Text` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_Issue2816Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `Issue2816Table`
(
	`Id`,
	`Text`
)
VALUES
(1,' '),
(2,'   '),
(3,'  x ')

BeforeExecute
-- MySqlConnector MySql

SELECT
	`p`.`Id`,
	`p`.`Text`
FROM
	`Issue2816Table` `p`
WHERE
	NOT (`p`.`Text` IS NULL OR NOT `p`.`Text` RLIKE '[^	
                 　]')

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue2816Table`

