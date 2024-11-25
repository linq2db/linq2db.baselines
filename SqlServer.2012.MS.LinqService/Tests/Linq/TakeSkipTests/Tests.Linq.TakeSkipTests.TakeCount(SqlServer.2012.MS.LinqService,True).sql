BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 5

SELECT
	COUNT(*)
FROM
	(
		SELECT TOP (@take)
			1 as [c1]
		FROM
			[Child] [t1]
	) [t2]

