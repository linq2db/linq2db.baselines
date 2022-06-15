BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE `CustomerBase`
(
	`Id`           INT           AUTO_INCREMENT NOT NULL,
	`ClientType`   CHAR(6)                      NOT NULL,
	`Name`         VARCHAR(4000)                    NULL,
	`ContactEmail` VARCHAR(4000)                    NULL,
	`Enabled`      BOOLEAN                          NULL,

	CONSTRAINT `PK_CustomerBase` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

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
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `CustomerBase`

