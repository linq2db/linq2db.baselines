BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	CASE
		WHEN [q].[ParentID] IS NOT NULL THEN [q].[ParentID]
		ELSE @p
	END
FROM
	[Parent] [q]

