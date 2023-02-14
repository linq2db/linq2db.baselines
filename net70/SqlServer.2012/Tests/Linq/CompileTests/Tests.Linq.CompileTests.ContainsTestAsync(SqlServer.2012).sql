BeforeExecute
-- SqlServer.2012 (asynchronously)
DECLARE @p_1 Int -- Int32
SET     @p_1 = 1

SELECT
	IIF(@p_1 IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	), 1, 0)

BeforeExecute
-- SqlServer.2012 (asynchronously)
DECLARE @p_1 Int -- Int32
SET     @p_1 = -1

SELECT
	IIF(@p_1 IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	), 1, 0)

