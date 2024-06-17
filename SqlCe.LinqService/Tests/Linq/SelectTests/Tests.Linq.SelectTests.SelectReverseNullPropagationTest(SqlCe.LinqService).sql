BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 0

SELECT
	CASE
		WHEN [q].[ParentID] IS NOT NULL THEN [q].[ParentID]
		ELSE @p
	END as [c1]
FROM
	[Parent] [q]

