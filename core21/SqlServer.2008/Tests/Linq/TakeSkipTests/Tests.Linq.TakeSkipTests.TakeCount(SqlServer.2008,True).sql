BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 5

SELECT
	Count(*)
FROM
	(
		SELECT TOP (@take)
			[t1].[ChildID]
		FROM
			[Child] [t1]
	) [t2]

