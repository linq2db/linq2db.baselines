BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `Table_3056`
(
	`Id`          INT          AUTO_INCREMENT NOT NULL,
	`Name`        VARCHAR(100)                    NULL,
	`Description` VARCHAR(255)                    NULL,

	CONSTRAINT `PK_Table_3056` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `Table_3056`
(
	`Name`,
	`Description`
)
VALUES
('n1','d0'),
('n2','d00')

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `Table_3056`

