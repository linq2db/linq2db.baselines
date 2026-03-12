-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	MAX([c_1].[ParentID]) as [Max_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

-- SqlCe
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	MAX([c_1].[ParentID]) as [Max_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

