BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Src`
(
	`Id`     INT         NOT NULL,
	`A`      INT             NULL,
	`B`      INT             NULL,
	`EnumA`  CHAR            NULL,
	`EnumB`  CHAR            NULL,
	`CEnumA` VARCHAR(20)     NULL,
	`CEnumB` VARCHAR(20)     NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

INSERT INTO `Src`
(
	`Id`,
	`A`,
	`B`,
	`EnumA`,
	`EnumB`,
	`CEnumA`,
	`CEnumB`
)
VALUES
(100,NULL,NULL,NULL,NULL,NULL,NULL),
(101,NULL,1,NULL,'A',NULL,'___One___'),
(110,1,NULL,'A',NULL,'___One___',NULL),
(111,1,1,'A','A','___One___','___One___'),
(112,1,2,'A','B','___One___','___Two___'),
(121,2,1,'B','A','___Two___','___One___')

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`x`.`Id`
FROM
	`Src` `x`
WHERE
	`x`.`CEnumA` > `x`.`CEnumB`
ORDER BY
	`x`.`Id`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

