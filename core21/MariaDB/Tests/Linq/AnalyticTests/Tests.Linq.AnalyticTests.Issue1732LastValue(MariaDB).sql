BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `Position`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Position`
(
	`Group` INT NOT NULL,
	`Order` INT NOT NULL,
	`Id`    INT     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `Position`
(
	`Group`,
	`Order`,
	`Id`
)
VALUES
(7,10,5),
(7,20,6),
(7,30,NULL),
(7,40,NULL)

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `Position`

