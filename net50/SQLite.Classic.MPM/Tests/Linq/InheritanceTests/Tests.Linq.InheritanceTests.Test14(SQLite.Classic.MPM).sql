BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 10
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[x].[ChildID]
FROM
	[Child] [x]
WHERE
	[x].[ChildID] = @id
LIMIT @take

