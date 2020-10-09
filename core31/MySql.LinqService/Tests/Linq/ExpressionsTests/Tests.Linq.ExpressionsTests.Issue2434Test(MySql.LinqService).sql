BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `Issue2434Table`
(
	`Id`        INT          NOT NULL,
	`FirstName` VARCHAR(255)     NULL,
	`LastName`  VARCHAR(255)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT 
	`t1`.`Id`, 
	`t1`.`FirstName`, 
	`t1`.`LastName`
FROM
	`Issue2434Table` `t1`
ORDER BY
	Concat(`t1`.`FirstName`, Concat(' ', `t1`.`LastName`))

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `Issue2434Table`

