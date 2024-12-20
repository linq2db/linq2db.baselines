BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `TableWithData`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TableWithData`
(
	`Id`       INT         NOT NULL,
	`Value`    INT         NOT NULL,
	`ValueStr` VARCHAR(50)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `DestinationTable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `DestinationTable`
(
	`Id`       INT         NOT NULL,
	`Value`    INT         NOT NULL,
	`ValueStr` VARCHAR(50)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @param Int32
SET     @param = 100

INSERT INTO `DestinationTable`
(
	`Id`,
	`Value`,
	`ValueStr`
)
SELECT
	`s`.`Id` + @param,
	`s`.`Value` + @param,
	Concat(`s`.`ValueStr`, @param)
FROM
	`TableWithData` `s`
WHERE
	`s`.`Id` = 3
RETURNING
	`DestinationTable`.`Id`,
	`DestinationTable`.`Value`,
	`DestinationTable`.`ValueStr`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @param Int32
SET     @param = 100

SELECT
	`s`.`Id` + @param,
	`s`.`Value` + @param,
	Concat(`s`.`ValueStr`, @param)
FROM
	`TableWithData` `s`
WHERE
	`s`.`Id` = 3

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `DestinationTable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `TableWithData`

