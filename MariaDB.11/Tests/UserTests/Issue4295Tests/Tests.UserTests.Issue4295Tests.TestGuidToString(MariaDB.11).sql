BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Guid
SET     @Id = '193ae7f4-5309-4eee-a746-27b28c7e30f3'

INSERT INTO `InfeedAdvicePositionDTO`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Lower(Cast(`infeed`.`Id` as CHAR(36)))
FROM
	`InfeedAdvicePositionDTO` `infeed`
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`infeed`.`Id`
FROM
	`InfeedAdvicePositionDTO` `infeed`
WHERE
	LOCATE('7f4-53', Lower(Cast(`infeed`.`Id` as CHAR(36)))) > 0

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`infeed`.`Id`
FROM
	`InfeedAdvicePositionDTO` `infeed`
WHERE
	Lower(Cast(`infeed`.`Id` as CHAR(36))) LIKE '193ae%' ESCAPE '~'

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`infeed`.`Id`
FROM
	`InfeedAdvicePositionDTO` `infeed`
WHERE
	LOCATE('8f4-53', Lower(Cast(`infeed`.`Id` as CHAR(36)))) > 0

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`infeed`.`Id`
FROM
	`InfeedAdvicePositionDTO` `infeed`
WHERE
	Lower(Lower(Cast(`infeed`.`Id` as CHAR(36)))) LIKE '293ae%' ESCAPE '~'

