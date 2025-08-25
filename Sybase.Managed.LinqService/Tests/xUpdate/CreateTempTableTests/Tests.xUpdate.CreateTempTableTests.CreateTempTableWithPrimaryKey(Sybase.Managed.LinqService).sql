BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

CREATE TABLE #TableWithPrimaryKey
(
	[Key] Int NOT NULL,

	CONSTRAINT [PK_TableWithPrimaryKey] PRIMARY KEY CLUSTERED ([Key])
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'#TableWithPrimaryKey') IS NOT NULL)
	DROP TABLE #TableWithPrimaryKey

