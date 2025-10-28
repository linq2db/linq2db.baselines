BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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
	Concat(`s`.`ValueStr`, 100)
FROM
	`TableWithData` `s`
WHERE
	`s`.`Id` > 3
RETURNING
	`DestinationTable`.`Id` + 1,
	Concat(`DestinationTable`.`ValueStr`, 1)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Value`,
	`t1`.`ValueStr`
FROM
	`DestinationTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`Id` + 1,
	Concat(`t`.`ValueStr`, 1)
FROM
	`DestinationTable` `t`

