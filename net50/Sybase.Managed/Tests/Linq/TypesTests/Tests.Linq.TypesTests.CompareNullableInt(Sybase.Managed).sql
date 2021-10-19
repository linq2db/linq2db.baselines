BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @param_1 Integer -- Int32
SET     @param_1 = 1

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
WHERE
	[t].[Value1] = @param_1

