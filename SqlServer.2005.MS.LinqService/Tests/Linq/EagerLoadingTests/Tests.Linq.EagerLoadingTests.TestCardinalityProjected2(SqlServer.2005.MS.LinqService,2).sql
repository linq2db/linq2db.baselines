﻿BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

SELECT
	[m_1].[Id],
	[d].[Id],
	[a_ObjectD].[Id],
	[a_ObjectD].[FK]
FROM
	[EntityMA] [m_1]
		INNER JOIN [EntityMB] [d] ON [m_1].[Id] = [d].[FK]
		LEFT JOIN [EntityMD] [a_ObjectD] ON [d].[FKD] = [a_ObjectD].[Id]

BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

SELECT
	[e].[Id]
FROM
	[EntityMA] [e]

