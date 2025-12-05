-- SqlServer.2016.MS SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 5

SELECT
	COUNT(*)
FROM
	(
		SELECT TOP (@take)
			*
		FROM
			[Child] [t1]
	) [t2]

