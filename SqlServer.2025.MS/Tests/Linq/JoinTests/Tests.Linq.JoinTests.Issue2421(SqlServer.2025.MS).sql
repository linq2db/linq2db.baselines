﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[m_1].[SectorId],
	[a_User].[UserId]
FROM
	[SectorDTO] [m_1]
		INNER JOIN [UPS] [d] ON [m_1].[SectorId] = [d].[SectorId]
		INNER JOIN [UserPositionDTO] [a_UserPosition] ON [d].[UserPositionId] = [a_UserPosition].[UserPositionId]
		INNER JOIN [UserDTO] [a_User] ON [a_UserPosition].[UserId] = [a_User].[UserId]
WHERE
	[a_UserPosition].[PositionId] = 1

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[x].[SectorId]
FROM
	[SectorDTO] [x]

