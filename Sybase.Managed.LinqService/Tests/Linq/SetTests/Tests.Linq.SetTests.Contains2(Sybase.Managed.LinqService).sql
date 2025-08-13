BeforeExecute
-- Sybase.Managed Sybase

SELECT
	CASE
		WHEN [p].[ParentID] IN (
			SELECT
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
		)
			THEN 1
		ELSE 0
	END
FROM
	[Parent] [p]

