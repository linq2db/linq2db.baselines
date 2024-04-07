BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	IIF(11 IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	), 1, 0)

