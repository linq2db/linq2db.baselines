﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
--  Sybase.Managed Sybase

SELECT
	[m_1].[Id],
	[m_1].[Id_1],
	[d_1].[Id],
	[d_1].[FK]
FROM
	(
		SELECT DISTINCT
			[d].[Id],
			[t1].[Id] as [Id_1]
		FROM
			(
				SELECT DISTINCT
					[e].[Id]
				FROM
					[EntityMA] [e]
			) [t1]
				INNER JOIN [EntityMB] [d] ON [t1].[Id] = [d].[FK]
	) [m_1]
		INNER JOIN [EntityMC] [d_1] ON [m_1].[Id] = [d_1].[FK]

BeforeExecute
--  Sybase.Managed Sybase

SELECT
	[m_1].[Id],
	[d].[Id]
FROM
	[EntityMA] [m_1]
		INNER JOIN [EntityMB] [d] ON [m_1].[Id] = [d].[FK]

BeforeExecute
DisposeTransaction
BeforeExecute
--  Sybase.Managed Sybase

SELECT
	[e].[Id]
FROM
	[EntityMA] [e]

