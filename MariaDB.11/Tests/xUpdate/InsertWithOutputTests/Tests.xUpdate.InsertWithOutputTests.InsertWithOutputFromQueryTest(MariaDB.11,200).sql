-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @param Int32
SET     @param = 200
DECLARE @param_1 VarChar(3) -- String
SET     @param_1 = '200'

INSERT INTO `DestinationTable`
(
	`Id`,
	`Value`,
	`ValueStr`
)
SELECT
	`s`.`Id` + @param,
	`s`.`Value` + @param,
	CONCAT(Coalesce(`s`.`ValueStr`, ''), Coalesce(@param_1, ''))
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
SET     @param = 200
DECLARE @param_1 VarChar(3) -- String
SET     @param_1 = '200'

SELECT
	`s`.`Id` + @param,
	`s`.`Value` + @param,
	CONCAT(Coalesce(`s`.`ValueStr`, ''), Coalesce(@param_1, ''))
FROM
	`TableWithData` `s`
WHERE
	`s`.`Id` > 3

