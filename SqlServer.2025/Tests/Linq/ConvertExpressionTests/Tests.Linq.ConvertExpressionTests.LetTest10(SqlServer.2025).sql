-- SqlServer.2025

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
				OUTER APPLY (
					SELECT TOP (1)
						1 as [c1]
					FROM
						[Child] [c_1]
					WHERE
						[c_1].[ParentID] = [p].[ParentID]
				) [t1]
	), 1, 0)

