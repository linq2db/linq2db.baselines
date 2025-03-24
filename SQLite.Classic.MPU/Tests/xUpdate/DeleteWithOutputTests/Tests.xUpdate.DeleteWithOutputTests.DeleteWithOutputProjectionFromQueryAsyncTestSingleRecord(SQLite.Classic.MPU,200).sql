﻿BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

DELETE FROM
	[TableWithData]
WHERE
	[TableWithData].[Id] = 3
RETURNING
	[TableWithData].[Id] + 1,
	[TableWithData].[ValueStr] || 1

