﻿BeforeExecute
-- SQLite.Classic SQLite
DECLARE @TestName  -- Int32
SET     @TestName = 2

UPDATE
	[testparams]
SET
	[Test-Name] = @TestName
WHERE
	[testparams].[Test-Name] = 1

