BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Src`
(
	`Id`    INT        NOT NULL,
	`Int`   INT            NULL,
	`Enum`  VARCHAR(5)     NULL,
	`CEnum` INT            NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `Src`
(
	`Id`,
	`Int`,
	`Enum`,
	`CEnum`
)
VALUES
(1,NULL,NULL,NULL),
(2,2,'TWO',1)

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`CEnum` IS NULL

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`CEnum` IS NOT NULL

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

