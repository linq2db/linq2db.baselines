BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x`.`SectorId`
FROM
	`SectorDTO` `x`

