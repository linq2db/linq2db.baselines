﻿BeforeExecute
--  SqlServer.2016

SELECT
	[m_1].[Id],
	[d].[Value]
FROM
	[Item] [m_1]
		INNER JOIN [ItemValue] [d] ON [m_1].[Id] = [d].[ItemId]

BeforeExecute
--  SqlServer.2016

SELECT
	[x].[Id],
	[x].[Text]
FROM
	[Item] [x]

