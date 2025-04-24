BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Guid
SET     @Id = X'F4E73A190953EE4EA74627B28C7E30F3'

INSERT INTO [TableWithGuid]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Lower(substr(hex([t].[Id]), 7, 2) || substr(hex([t].[Id]), 5, 2) || substr(hex([t].[Id]), 3, 2) || substr(hex([t].[Id]), 1, 2) || '-' || substr(hex([t].[Id]), 11, 2) || substr(hex([t].[Id]), 9, 2) || '-' || substr(hex([t].[Id]), 15, 2) || substr(hex([t].[Id]), 13, 2) || '-' || substr(hex([t].[Id]), 17, 4) || '-' || substr(hex([t].[Id]), 21, 12))
FROM
	[TableWithGuid] [t]
LIMIT 1

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[Id]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(substr(hex([t].[Id]), 7, 2) || substr(hex([t].[Id]), 5, 2) || substr(hex([t].[Id]), 3, 2) || substr(hex([t].[Id]), 1, 2) || '-' || substr(hex([t].[Id]), 11, 2) || substr(hex([t].[Id]), 9, 2) || '-' || substr(hex([t].[Id]), 15, 2) || substr(hex([t].[Id]), 13, 2) || '-' || substr(hex([t].[Id]), 17, 4) || '-' || substr(hex([t].[Id]), 21, 12)) LIKE '%7f4-53%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[Id]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(substr(hex([t].[Id]), 7, 2) || substr(hex([t].[Id]), 5, 2) || substr(hex([t].[Id]), 3, 2) || substr(hex([t].[Id]), 1, 2) || '-' || substr(hex([t].[Id]), 11, 2) || substr(hex([t].[Id]), 9, 2) || '-' || substr(hex([t].[Id]), 15, 2) || substr(hex([t].[Id]), 13, 2) || '-' || substr(hex([t].[Id]), 17, 4) || '-' || substr(hex([t].[Id]), 21, 12)) LIKE '193ae%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[Id]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(substr(hex([t].[Id]), 7, 2) || substr(hex([t].[Id]), 5, 2) || substr(hex([t].[Id]), 3, 2) || substr(hex([t].[Id]), 1, 2) || '-' || substr(hex([t].[Id]), 11, 2) || substr(hex([t].[Id]), 9, 2) || '-' || substr(hex([t].[Id]), 15, 2) || substr(hex([t].[Id]), 13, 2) || '-' || substr(hex([t].[Id]), 17, 4) || '-' || substr(hex([t].[Id]), 21, 12)) LIKE '%8f4-53%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[Id]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(substr(hex([t].[Id]), 7, 2) || substr(hex([t].[Id]), 5, 2) || substr(hex([t].[Id]), 3, 2) || substr(hex([t].[Id]), 1, 2) || '-' || substr(hex([t].[Id]), 11, 2) || substr(hex([t].[Id]), 9, 2) || '-' || substr(hex([t].[Id]), 15, 2) || substr(hex([t].[Id]), 13, 2) || '-' || substr(hex([t].[Id]), 17, 4) || '-' || substr(hex([t].[Id]), 21, 12)) LIKE '293ae%' ESCAPE '~'

