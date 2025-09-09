BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Parent] [p]
					OUTER APPLY (
						SELECT TOP (1)
							[c_1].[ParentID],
							[c_1].[ChildID]
						FROM
							[Child] [c_1]
						WHERE
							[c_1].[ParentID] = [p].[ParentID]
					) [t1]
		)
			THEN 1
		ELSE 0
	END

