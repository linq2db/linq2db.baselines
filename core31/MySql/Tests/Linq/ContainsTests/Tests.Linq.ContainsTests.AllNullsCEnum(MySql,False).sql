BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Src`
(
	`Id`    INT        NOT NULL,
	`Int`   INT            NULL,
	`Enum`  VARCHAR(5)     NULL,
	`CEnum` INT            NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `Src`
(
	`Id`,
	`Int`,
	`Enum`,
	`CEnum`
)
VALUES
(1,NULL,NULL,NULL),
(2,2,'TWO',1)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`CEnum` IN (NULL, NULL)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`CEnum` NOT IN (NULL, NULL)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Src`

