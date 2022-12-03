BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @_default Int -- Int32
SET     @_default = 0

SELECT
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	Coalesce([p].[Value1], @_default) > 0

