﻿BeforeExecute
--  SQLite.Classic SQLite
DECLARE @from  -- Int32
SET     @from = 2

UPDATE
	[testparams]
SET
	[from] = @from
WHERE
	[testparams].[from] = 1

