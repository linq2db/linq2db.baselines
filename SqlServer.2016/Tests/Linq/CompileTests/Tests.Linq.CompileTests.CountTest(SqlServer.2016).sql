BeforeExecute
-- SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

BeforeExecute
-- SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

