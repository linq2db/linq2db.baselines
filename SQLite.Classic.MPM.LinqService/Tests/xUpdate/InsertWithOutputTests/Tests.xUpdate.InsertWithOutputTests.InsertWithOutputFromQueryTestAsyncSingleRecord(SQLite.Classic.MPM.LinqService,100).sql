﻿BeforeExecute
--  SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @param  -- Int32
SET     @param = 100

SELECT
	[s].[Id] + @param,
	[s].[Value] + @param,
	[s].[ValueStr] || @param
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

