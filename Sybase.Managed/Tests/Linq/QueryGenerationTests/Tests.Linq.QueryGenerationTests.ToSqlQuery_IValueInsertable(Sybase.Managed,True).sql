-- Sybase.Managed Sybase

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	123
)

-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

