-- SqlServer.2012.MS SqlServer.2012
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	MAX([c_1].[ParentID])
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

-- SqlServer.2012.MS SqlServer.2012
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	MAX([c_1].[ParentID])
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

