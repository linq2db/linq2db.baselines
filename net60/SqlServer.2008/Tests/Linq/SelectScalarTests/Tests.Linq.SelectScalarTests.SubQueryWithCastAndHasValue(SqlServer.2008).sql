BeforeExecute
-- SqlServer.2008
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
			[r].[Value1]
		FROM
			[Parent] [r]
	) IS NOT NULL

