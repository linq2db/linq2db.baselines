BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue2816Table`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue2816Table`
(
	`Id`   INT           NOT NULL,
	`Text` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_Issue2816Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Text VarChar(1) -- String
SET     @Text = ' '

INSERT INTO `Issue2816Table`
(
	`Id`,
	`Text`
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Text VarChar(3) -- String
SET     @Text = '   '

INSERT INTO `Issue2816Table`
(
	`Id`,
	`Text`
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Text VarChar(4) -- String
SET     @Text = '  x '

INSERT INTO `Issue2816Table`
(
	`Id`,
	`Text`
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`Id`,
	`p`.`Text`
FROM
	`Issue2816Table` `p`
WHERE
	NOT (`p`.`Text` IS NULL OR NOT `p`.`Text` RLIKE '[^	
                 　]')

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue2816Table`

