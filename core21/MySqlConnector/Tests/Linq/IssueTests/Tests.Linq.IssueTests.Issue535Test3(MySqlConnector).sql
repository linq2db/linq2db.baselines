BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `CustomerBase`
(
	`Id`           INT          AUTO_INCREMENT NOT NULL,
	`ClientType`   CHAR(6)                     NOT NULL,
	`Name`         VARCHAR(255)                    NULL,
	`ContactEmail` VARCHAR(255)                    NULL,
	`Enabled`      BOOLEAN                         NULL,

	CONSTRAINT `PK_CustomerBase` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

SELECT 
	`cb`.`Id`, 
	`cb`.`Name`, 
	`cb`.`ContactEmail`, 
	Coalesce(`cb`.`Enabled`, 0)
FROM
	`CustomerBase` `cb`
WHERE
	`cb`.`ClientType` = 'Client'

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `CustomerBase`

