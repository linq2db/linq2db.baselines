BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue1303`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Issue1303`
(
	`ID`     INT           NOT NULL,
	`Array`  VARBINARY(10)     NULL,
	`Binary` VARBINARY(10)     NULL,

	CONSTRAINT `PK_Issue1303` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `Issue1303`
(
	`ID`,
	`Array`,
	`Binary`
)
VALUES
(
	1,
	0x010203,
	0x0405
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ID`,
	`t1`.`Array`,
	`t1`.`Binary`
FROM
	`Issue1303` `t1`
WHERE
	`t1`.`ID` = 1
LIMIT 2

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ID`,
	`t1`.`Array`,
	`t1`.`Binary`
FROM
	`Issue1303` `t1`
WHERE
	`t1`.`Array` = 0x010203
LIMIT 2

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ID`,
	`t1`.`Array`,
	`t1`.`Binary`
FROM
	`Issue1303` `t1`
WHERE
	`t1`.`Binary` = 0x0405
LIMIT 2

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue1303`

