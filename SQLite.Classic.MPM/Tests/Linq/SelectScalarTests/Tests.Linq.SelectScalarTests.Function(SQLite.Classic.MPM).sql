﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @text NVarChar(3) -- String
SET     @text = '123'

SELECT
	[c_1].[ChildID] || ',' || @text
FROM
	[Child] [c_1]
LIMIT 1

