BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE ##IsGlobalTemporaryTable
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	##IsGlobalTemporaryTable [t1]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE ##IsGlobalTemporaryTable

