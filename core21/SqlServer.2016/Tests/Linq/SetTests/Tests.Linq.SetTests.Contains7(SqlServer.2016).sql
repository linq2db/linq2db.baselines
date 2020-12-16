BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = 11
	), 1, 0)

