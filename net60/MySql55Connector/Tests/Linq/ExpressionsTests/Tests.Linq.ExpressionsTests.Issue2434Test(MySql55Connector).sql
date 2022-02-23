BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE `Issue2434Table`
(
	`Id`        INT          NOT NULL,
	`FirstName` VARCHAR(255)     NULL,
	`LastName`  VARCHAR(255)     NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`FirstName`,
	`t1`.`LastName`,
	Concat(`t1`.`FirstName`, Concat(' ', `t1`.`LastName`))
FROM
	`Issue2434Table` `t1`
ORDER BY
	Concat(`t1`.`FirstName`, Concat(' ', `t1`.`LastName`))

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Issue2434Table`

