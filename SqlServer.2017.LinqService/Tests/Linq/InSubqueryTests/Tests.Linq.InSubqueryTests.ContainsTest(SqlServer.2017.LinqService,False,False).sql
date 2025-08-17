BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	IIF(1 IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	), 1, 0)

