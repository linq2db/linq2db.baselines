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
SET     @param = 100

INSERT INTO `DestinationTable`
(
	`Id`,
	`Value`,
	`ValueStr`
)
SELECT
	`s`.`Id` + 100 + @param,
	`s`.`Value` + 100,
	Concat(`s`.`ValueStr`, Cast(100 as CHAR(11)))
FROM
	`TableWithData` `s`
WHERE
	`s`.`Id` > 3
RETURNING
	`DestinationTable`.`Id` + 1,
	Concat(`DestinationTable`.`ValueStr`, Cast(1 as CHAR(11)))

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`,
	`t1`.`ValueStr`
FROM
	`DestinationTable` `t1`

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`t`.`Id`,
	`t`.`ValueStr`
FROM
	`DestinationTable` `t`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `DestinationTable`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `TableWithData`

