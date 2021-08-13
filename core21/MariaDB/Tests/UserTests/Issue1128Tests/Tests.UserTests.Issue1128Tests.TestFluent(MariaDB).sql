BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE `AttributeBase`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_AttributeBase` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `AttributeBase`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `AttributeBase`

