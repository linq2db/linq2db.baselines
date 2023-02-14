BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)
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
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)
DECLARE @p_1 Int -- Int32
SET     @p_1 = -1

SELECT
	IIF(@p_1 IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	), 1, 0)

