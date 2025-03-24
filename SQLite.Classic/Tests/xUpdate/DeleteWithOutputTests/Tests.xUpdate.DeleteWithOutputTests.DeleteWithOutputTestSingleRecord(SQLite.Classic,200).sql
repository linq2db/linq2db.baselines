﻿BeforeExecute
--  SQLite.Classic SQLite

SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

BeforeExecute
--  SQLite.Classic SQLite

DELETE FROM
	[TableWithData]
WHERE
	[TableWithData].[Id] = 3
RETURNING
	[TableWithData].[Id],
	[TableWithData].[Value],
	[TableWithData].[ValueStr]

