-- SQLite.MS SQLite

SELECT
	Lower(substr(hex([t].[Id]), 7, 2) || substr(hex([t].[Id]), 5, 2) || substr(hex([t].[Id]), 3, 2) || substr(hex([t].[Id]), 1, 2) || '-' || substr(hex([t].[Id]), 11, 2) || substr(hex([t].[Id]), 9, 2) || '-' || substr(hex([t].[Id]), 15, 2) || substr(hex([t].[Id]), 13, 2) || '-' || substr(hex([t].[Id]), 17, 4) || '-' || substr(hex([t].[Id]), 21, 12))
FROM
	[TableWithGuid] [t]

-- SQLite.MS SQLite

SELECT
	[t].[Id]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(substr(hex([t].[Id]), 7, 2) || substr(hex([t].[Id]), 5, 2) || substr(hex([t].[Id]), 3, 2) || substr(hex([t].[Id]), 1, 2) || '-' || substr(hex([t].[Id]), 11, 2) || substr(hex([t].[Id]), 9, 2) || '-' || substr(hex([t].[Id]), 15, 2) || substr(hex([t].[Id]), 13, 2) || '-' || substr(hex([t].[Id]), 17, 4) || '-' || substr(hex([t].[Id]), 21, 12)) = 'x'

