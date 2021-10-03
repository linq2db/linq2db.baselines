BeforeExecute
-- MariaDB MySql

DROP TABLE IF EXISTS `WhereWithString`

BeforeExecute
-- MariaDB MySql

CREATE TABLE IF NOT EXISTS `WhereWithString`
(
	`Id`          INT          NOT NULL,
	`StringValue` VARCHAR(255)     NULL,

	CONSTRAINT `PK_WhereWithString` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySql

INSERT INTO `WhereWithString`
(
	`Id`,
	`StringValue`
)
VALUES
(1,'Str1')

BeforeExecute
-- MariaDB MySql

SELECT
	`x`.`Id`,
	`x`.`StringValue`
FROM
	`WhereWithString` `x`
WHERE
	LOCATE('Str', `x`.`StringValue`) > 0

BeforeExecute
-- MariaDB MySql

DROP TABLE IF EXISTS `WhereWithString`

