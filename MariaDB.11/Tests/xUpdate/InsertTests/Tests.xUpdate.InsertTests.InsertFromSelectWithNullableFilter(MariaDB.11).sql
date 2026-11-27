-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
INSERT INTO `InsertSelectAssociationRow`
(
	`Pk`,
	`ID`,
	`intDataType`
)
SELECT
	`t2`.`ID`,
	123,
	`t2`.`ID`
FROM
	(
		SELECT DISTINCT
			`a_Association`.`ID`
		FROM
			`InsertSelectAssociationRow` `t1`
				INNER JOIN `InsertSelectAssociationRow` `a_Association` ON CAST(`t1`.`ID` AS SIGNED) = `a_Association`.`intDataType`
		WHERE
			1 = 0
	) `t2`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @p Int16
SET     @p = 1234

INSERT INTO `InsertSelectAssociationRow`
(
	`Pk`,
	`ID`,
	`intDataType`
)
SELECT
	`t2`.`ID`,
	123,
	`t2`.`ID`
FROM
	(
		SELECT DISTINCT
			`a_Association`.`ID`
		FROM
			`InsertSelectAssociationRow` `t1`
				INNER JOIN `InsertSelectAssociationRow` `a_Association` ON CAST(`t1`.`ID` AS SIGNED) = `a_Association`.`intDataType`
		WHERE
			`t1`.`ID` = @p
	) `t2`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Pk`,
	`t1`.`ID`,
	`t1`.`intDataType`
FROM
	`InsertSelectAssociationRow` `t1`

