BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `UserDTO`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `UserDTO`
(
	`UserId`   INT           AUTO_INCREMENT NOT NULL,
	`UserName` VARCHAR(4000)                    NULL,

	CONSTRAINT `PK_UserDTO` PRIMARY KEY CLUSTERED (`UserId`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `UserPositionDTO`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `UserPositionDTO`
(
	`UserPositionId` INT AUTO_INCREMENT NOT NULL,
	`UserId`         INT                NOT NULL,
	`PositionId`     INT                NOT NULL,

	CONSTRAINT `PK_UserPositionDTO` PRIMARY KEY CLUSTERED (`UserPositionId`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `UPS`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `UPS`
(
	`UserPositionSectorId` INT AUTO_INCREMENT NOT NULL,
	`UserPositionId`       INT                NOT NULL,
	`SectorId`             INT                NOT NULL,

	CONSTRAINT `PK_UPS` PRIMARY KEY CLUSTERED (`UserPositionSectorId`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `PositionDTO`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `PositionDTO`
(
	`PositionId`   INT           AUTO_INCREMENT NOT NULL,
	`PositionName` VARCHAR(4000)                NOT NULL,

	CONSTRAINT `PK_PositionDTO` PRIMARY KEY CLUSTERED (`PositionId`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `SectorDTO`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SectorDTO`
(
	`SectorId`   INT           AUTO_INCREMENT NOT NULL,
	`SectorName` VARCHAR(4000)                NOT NULL,

	CONSTRAINT `PK_SectorDTO` PRIMARY KEY CLUSTERED (`SectorId`)
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`m_1`.`SectorId`,
	`a_User`.`UserId`
FROM
	`SectorDTO` `m_1`
		INNER JOIN `UPS` `d` ON `m_1`.`SectorId` = `d`.`SectorId`
		INNER JOIN `UserPositionDTO` `a_UserPosition` ON `d`.`UserPositionId` = `a_UserPosition`.`UserPositionId`
		INNER JOIN `UserDTO` `a_User` ON `a_UserPosition`.`UserId` = `a_User`.`UserId`
WHERE
	`a_UserPosition`.`PositionId` = 1

BeforeExecute
DisposeTransaction
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`x`.`SectorId`
FROM
	`SectorDTO` `x`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `SectorDTO`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `PositionDTO`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `UPS`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `UserPositionDTO`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `UserDTO`

