-- Sybase.Managed Sybase

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]

-- Sybase.Managed Sybase
DECLARE @param Integer -- Int32
SET     @param = 1

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
WHERE
	[t].[Value1] = @param

