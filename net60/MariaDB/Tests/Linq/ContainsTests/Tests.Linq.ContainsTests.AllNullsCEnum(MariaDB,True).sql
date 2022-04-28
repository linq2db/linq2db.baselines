BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Src`
(
	`Id`    INT          NOT NULL,
	`Int`   INT              NULL,
	`Enum`  VARCHAR(5)       NULL,
	`CEnum` VARCHAR(255)     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `Src`
(
	`Id`,
	`Int`,
	`Enum`,
	`CEnum`
)
VALUES
(1,NULL,NULL,NULL),
(2,2,'TWO','___Value2___')

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`CEnum` IS NULL

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`CEnum` IS NOT NULL

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `Src`

