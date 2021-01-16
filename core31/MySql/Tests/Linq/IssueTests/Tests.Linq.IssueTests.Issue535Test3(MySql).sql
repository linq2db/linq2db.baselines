BeforeExecute
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql

DROP TABLE `CustomerBase`

