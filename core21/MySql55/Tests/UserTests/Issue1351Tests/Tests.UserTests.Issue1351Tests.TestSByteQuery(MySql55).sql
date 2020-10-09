BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `T1351Model`
(
	`ID`           INT     NOT NULL,
	`TestField`    TINYINT NOT NULL,
	`TestNullable` TINYINT     NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	`_`.`ID`, 
	`_`.`TestField`, 
	`_`.`TestNullable`
FROM
	`T1351Model` `_`
WHERE
	`_`.`TestField` = 0

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	`_`.`ID`, 
	`_`.`TestField`, 
	`_`.`TestNullable`
FROM
	`T1351Model` `_`
WHERE
	(`_`.`TestNullable` IS NULL OR `_`.`TestNullable` <> 1)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `T1351Model`

