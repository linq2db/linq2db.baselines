-- SqlServer.SA.MS SqlServer.2019

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
				OUTER APPLY (
					SELECT TOP (1)
						*
					FROM
						[Child] [c_1]
					WHERE
						[c_1].[ParentID] = [p].[ParentID]
				) [t1]
	), 1, 0)

