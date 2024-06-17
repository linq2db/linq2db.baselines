BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Int -- Int32
SET     @p = 0

SELECT
	CASE
		WHEN [q].[ParentID] IS NOT NULL THEN [q].[ParentID]
		ELSE @p
	END
FROM
	[Parent] [q]

