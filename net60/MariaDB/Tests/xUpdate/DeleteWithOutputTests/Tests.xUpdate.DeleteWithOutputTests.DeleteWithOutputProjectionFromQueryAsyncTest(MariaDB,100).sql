﻿BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `TableWithData`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `TableWithData`
(
	`Id`       INT         NOT NULL,
	`Value`    INT         NOT NULL,
	`ValueStr` VARCHAR(50)     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `TableWithData`
(
	`Id`,
	`Value`,
	`ValueStr`
)
VALUES
(1,-1,'Str1'),
(2,-2,'Str2'),
(3,-3,'Str3'),
(4,-4,'Str4'),
(5,-5,'Str5'),
(6,-6,'Str6'),
(7,-7,'Str7'),
(8,-8,'Str8'),
(9,-9,'Str9'),
(10,-10,'Str10')

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`s`.`Id`,
	`s`.`Value`,
	`s`.`ValueStr`
FROM
	`TableWithData` `s`
WHERE
	`s`.`Id` > 3

BeforeExecute
-- MariaDB MySql.Official MySql (asynchronously)

DELETE  
FROM
	`TableWithData`
WHERE
	`TableWithData`.`Id` > 3
RETURNING
	`TableWithData`.`Id` + 1,
	Concat(`TableWithData`.`ValueStr`, Cast(1 as CHAR(11)))

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `TableWithData`

