﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Src`
(
	`Id`  INT NOT NULL,
	`Int` INT     NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

INSERT INTO `Src`
(
	`Id`,
	`Int`
)
VALUES
(1,NULL),
(2,2)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` IS NULL

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` IS NOT NULL

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

