-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 3

WITH [CTE_1] ([ParentID], [Value1])
AS
(
	SELECT
		[t1].[ParentID],
		[t1].[Value1]
	FROM
		[Parent] [t1]
	ORDER BY
		[t1].[ParentID] DESC
	LIMIT @take
)
SELECT
	[t2].[ParentID],
	[t2].[Value1]
FROM
	[CTE_1] [t2]

