﻿BeforeExecute
--  SqlServer.2019.MS SqlServer.2019

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[MainEntityId]
FROM
	[MainEntity] [m_1]
		INNER JOIN [SubEntity] [d] ON [m_1].[Id] = [d].[MainEntityId]

BeforeExecute
--  SqlServer.2019.MS SqlServer.2019

SELECT
	[x].[Id]
FROM
	[MainEntity] [x]

