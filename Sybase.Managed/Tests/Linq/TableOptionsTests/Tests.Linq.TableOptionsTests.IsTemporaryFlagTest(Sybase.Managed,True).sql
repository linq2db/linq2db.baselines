﻿BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE #IsTemporaryTable
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_IsTemporaryTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	#IsTemporaryTable [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'#IsTemporaryTable') IS NOT NULL)
	DROP TABLE #IsTemporaryTable

