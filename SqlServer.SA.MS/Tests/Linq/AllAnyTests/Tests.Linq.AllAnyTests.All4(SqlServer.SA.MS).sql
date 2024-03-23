BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	IIF(NOT EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] <= 3
	), 1, 0)

