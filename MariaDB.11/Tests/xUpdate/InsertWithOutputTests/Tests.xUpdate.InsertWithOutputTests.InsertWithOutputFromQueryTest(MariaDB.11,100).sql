-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @param Int32
SET     @param = 100
DECLARE @ValueStr VarChar(3) -- String
SET     @ValueStr = '100'

INSERT INTO `DestinationTable`
(
	`Id`,
	`Value`,
	`ValueStr`
)
SELECT
	`s`.`Id` + @param,
	`s`.`Value` + @param,
	Concat(`s`.`ValueStr`, @ValueStr)
FROM
	`TableWithData` `s`
WHERE
	`s`.`Id` > 3
RETURNING
	`DestinationTable`.`Id`,
	`DestinationTable`.`Value`,
	`DestinationTable`.`ValueStr`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @param Int32
SET     @param = 100
DECLARE @ValueStr VarChar(3) -- String
SET     @ValueStr = '100'

SELECT
	`s`.`Id` + @param,
	`s`.`Value` + @param,
	Concat(`s`.`ValueStr`, @ValueStr)
FROM
	`TableWithData` `s`
WHERE
	`s`.`Id` > 3

