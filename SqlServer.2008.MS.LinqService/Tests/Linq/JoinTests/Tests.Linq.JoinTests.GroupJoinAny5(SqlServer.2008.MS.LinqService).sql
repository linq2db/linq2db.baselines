BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Child] [c_1]
			WHERE
				[t1].[ParentID] = [c_1].[ParentID]
		)
			THEN 1
		ELSE 0
	END
FROM
	[Parent] [t1]

