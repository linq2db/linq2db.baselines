BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @_default Int -- Int32
SET     @_default = 0

SELECT
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	Coalesce([p].[Value1], @_default) > 0

