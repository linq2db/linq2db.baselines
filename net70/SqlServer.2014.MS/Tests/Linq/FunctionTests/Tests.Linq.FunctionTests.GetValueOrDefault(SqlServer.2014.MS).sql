BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @_default Int -- Int32
SET     @_default = 0

SELECT
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	Coalesce([p].[Value1], @_default) > 0

