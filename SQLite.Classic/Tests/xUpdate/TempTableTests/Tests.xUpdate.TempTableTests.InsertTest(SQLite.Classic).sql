﻿BeforeExecute
--  SQLite.Classic SQLite

INSERT INTO [Table2]
(
	[ID]
)
SELECT
	[t].[ID]
FROM
	[Table1] [t]

BeforeExecute
--  SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[Date]
FROM
	[Table2] [t1]

