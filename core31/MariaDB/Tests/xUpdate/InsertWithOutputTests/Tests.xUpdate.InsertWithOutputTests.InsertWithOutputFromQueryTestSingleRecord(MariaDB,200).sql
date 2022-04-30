BeforeExecute
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

CREATE TABLE `DestinationTable`
(
	`Id`       INT         NOT NULL,
	`Value`    INT         NOT NULL,
	`ValueStr` VARCHAR(50)     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @param Int32
SET     @param = 200
DECLARE @param_1 Int32
SET     @param_1 = 200

INSERT INTO `DestinationTable`
(
	`Id`,
	`Value`,
	`ValueStr`
)
SELECT
	`s`.`Id` + @param,
	`s`.`Value` + @param,
	Concat(`s`.`ValueStr`, Cast(@param_1 as CHAR(100)))
FROM
	`TableWithData` `s`
WHERE
	`s`.`Id` = 3
RETURNING
	`DestinationTable`.`Id`,
	`DestinationTable`.`Value`,
	`DestinationTable`.`ValueStr`

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`s`.`Id`,
	`s`.`Value`,
	`s`.`ValueStr`
FROM
	`TableWithData` `s`
WHERE
	`s`.`Id` = 3

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `DestinationTable`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `TableWithData`

