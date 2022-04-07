BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE #TableWithPrimaryKey
(
	[Key] Int NOT NULL,

	CONSTRAINT [PK_TableWithPrimaryKey] PRIMARY KEY CLUSTERED ([Key])
)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'tempdb..#TableWithPrimaryKey') IS NOT NULL)
	DROP TABLE #TableWithPrimaryKey

