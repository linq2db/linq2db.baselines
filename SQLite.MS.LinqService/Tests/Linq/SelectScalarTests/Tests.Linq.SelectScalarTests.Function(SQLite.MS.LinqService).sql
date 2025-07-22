BeforeExecute
-- SQLite.MS SQLite
DECLARE @text NVarChar(3) -- String
SET     @text = '123'

SELECT
	[c_1].[ChildID] || ',' || Coalesce(@text, '')
FROM
	[Child] [c_1]
LIMIT 1

