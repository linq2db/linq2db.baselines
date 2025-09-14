BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE ##TestTable
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'##TestTable') IS NOT NULL)
	DROP TABLE ##TestTable

