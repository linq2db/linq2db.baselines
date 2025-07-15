BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	COUNT(*)
FROM
	(
		SELECT TOP (@take)
			*
		FROM
			[Parent] [t1]
		ORDER BY
			[t1].[ParentID]
	) [t2]

