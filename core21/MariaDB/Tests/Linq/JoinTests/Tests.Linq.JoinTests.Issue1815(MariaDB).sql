BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `StLink`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `StLink`
(
	`InId`          INT    NOT NULL,
	`InMaxQuantity` DOUBLE     NULL,
	`InMinQuantity` DOUBLE     NULL,

	CONSTRAINT `PK_StLink` PRIMARY KEY CLUSTERED (`InId`)
)

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `StLink`
(
	`InId`,
	`InMaxQuantity`,
	`InMinQuantity`
)
VALUES
(1,2,1),
(2,NULL,NULL)

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `EdtLink`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `EdtLink`
(
	`InId`          INT    NOT NULL,
	`InMaxQuantity` DOUBLE     NULL,
	`InMinQuantity` DOUBLE     NULL,

	CONSTRAINT `PK_EdtLink` PRIMARY KEY CLUSTERED (`InId`)
)

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `EdtLink`
(
	`InId`,
	`InMaxQuantity`,
	`InMinQuantity`
)
VALUES
(2,4,3)

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `EdtLink`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `StLink`

