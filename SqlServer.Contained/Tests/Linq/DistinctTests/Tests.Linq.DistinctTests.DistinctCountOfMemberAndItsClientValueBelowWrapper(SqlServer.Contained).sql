-- SqlServer.Contained SqlServer.2025
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[c_1].[ChildID]
		FROM
			[Child] [c_1]
	) [t1]

-- SqlServer.Contained SqlServer.2025
DECLARE @take Int -- Int32
SET     @take = 100

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[t1].[ChildID]
		FROM
			(
				SELECT TOP (@take)
					[c_1].[ChildID]
				FROM
					[Child] [c_1]
			) [t1]
	) [t2]

