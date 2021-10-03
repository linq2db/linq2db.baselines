﻿BeforeExecute
-- MariaDB MySql

CREATE TABLE `Issue2434Table`
(
	`Id`        INT          NOT NULL,
	`FirstName` VARCHAR(255)     NULL,
	`LastName`  VARCHAR(255)     NULL
)

BeforeExecute
-- MariaDB MySql

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
-- MariaDB MySql

DROP TABLE IF EXISTS `Issue2434Table`

