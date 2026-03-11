-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`arg`.`Id`,
	`arg`.`Value`
FROM
	`Person` `entity`
		INNER JOIN (
			SELECT 1 AS `Id`, CAST(NULL AS DOUBLE) AS `Value`) `arg` ON `entity`.`PersonID` = `arg`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`arg`.`Id`,
	`arg`.`Value`
FROM
	`Person` `entity`
		INNER JOIN (
			SELECT 1 AS `Id`, CAST(3147483648 AS DOUBLE) AS `Value`) `arg` ON `entity`.`PersonID` = `arg`.`Id`

