BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @default Int -- Int32
SET     @default = 0

SELECT
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	Coalesce([p].[Value1], @default) > 0

