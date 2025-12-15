-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`arg`.`Id`,
	`arg`.`Value`
FROM
	`Person` `entity`
		INNER JOIN (
			SELECT 1 AS `Id`, CAST(1 AS SIGNED) AS `Value`) `arg` ON `entity`.`PersonID` = `arg`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`arg`.`Id`,
	`arg`.`Value`
FROM
	`Person` `entity`
		INNER JOIN (
			SELECT 1 AS `Id`, CAST(2147483648 AS SIGNED) AS `Value`) `arg` ON `entity`.`PersonID` = `arg`.`Id`

