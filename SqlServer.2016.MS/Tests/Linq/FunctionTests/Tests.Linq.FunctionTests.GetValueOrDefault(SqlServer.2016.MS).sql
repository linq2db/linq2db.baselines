BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @default Int -- Int32
SET     @default = 0

SELECT
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	Coalesce([p].[Value1], @default) > 0

