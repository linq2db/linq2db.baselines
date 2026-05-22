-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

CREATE TEMPORARY TABLE `T_e3d440bb868e`
(
	`Id`   INT           NOT NULL,
	`Data` VARCHAR(4000)     NULL
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `T_e3d440bb868e`
(
	`Id`,
	`Data`
)
VALUES
(20,'Data 20'),
(21,'Data 21'),
(22,'Data 22')

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
		INNER JOIN `T_e3d440bb868e` `r` ON `p`.`PersonID` = `r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TEMPORARY TABLE IF EXISTS `T_e3d440bb868e`

