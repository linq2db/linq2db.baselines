BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[_].[ParentID],
	[_].[Value1]
FROM
	[Parent] [_]
WHERE
	(
		SELECT TOP (@take)
			[r].[GuidValue]
		FROM
			[LinqDataTypes] [r]
	) IS NOT NULL

