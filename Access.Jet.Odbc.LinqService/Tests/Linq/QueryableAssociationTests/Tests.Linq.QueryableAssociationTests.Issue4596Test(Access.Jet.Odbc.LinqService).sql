﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4596Form]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Issue4596Form]
(
	[Id] Int      NOT NULL,
	[C1] NChar(1) NOT NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4596Item]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Issue4596Item]
(
	[Id]         Int           NOT NULL,
	[FormId]     Int           NOT NULL,
	[OrderIndex] Int           NOT NULL,
	[Name1]      NVarChar(255)     NULL,
	[Name2]      NVarChar(255)     NULL,
	[Name3]      NVarChar(255)     NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[m_1].[Id],
	[m_1].[cond],
	[m_1].[cond_1],
	[d].[Id],
	[d].[FormId],
	[d].[OrderIndex],
	[d].[Name1],
	[d].[Name2],
	[d].[Name3]
FROM
	(
		SELECT TOP 1
			[t1].[Id],
			[t1].[C1] = 'T' as [cond],
			[t1].[C1] <> 'T' as [cond_1]
		FROM
			[Issue4596Form] [t1]
	) [m_1],
	[Issue4596Item] [d]
WHERE
	[d].[FormId] = [m_1].[Id]
ORDER BY
	IIF([m_1].[cond], [d].[OrderIndex], 0),
	IIF([m_1].[cond_1], [d].[Name1], ''),
	IIF([m_1].[cond_1], [d].[Name2], ''),
	IIF([m_1].[cond_1], [d].[Name3], '')

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT TOP 1
	[t1].[Id],
	[t1].[C1],
	[t1].[C1] = 'T',
	[t1].[C1] <> 'T'
FROM
	[Issue4596Form] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4596Item]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4596Form]

