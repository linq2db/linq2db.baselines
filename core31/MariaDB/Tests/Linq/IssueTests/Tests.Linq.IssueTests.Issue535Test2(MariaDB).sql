BeforeExecute
-- MariaDB MySql.Official MySql

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
-- MariaDB MySql.Official MySql
DECLARE @filter_1 VarChar(4) -- String
SET     @filter_1 = 'test'

SELECT
	`q`.`Id`,
	`q`.`Name`,
	`q`.`ContactEmail`,
	Coalesce(`q`.`Enabled`, 0)
FROM
	`CustomerBase` `q`
WHERE
	`q`.`ClientType` = 'Client' AND (LOCATE(@filter_1, `q`.`Name`) > 0 OR LOCATE(@filter_1, `q`.`ContactEmail`) > 0)

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `CustomerBase`

