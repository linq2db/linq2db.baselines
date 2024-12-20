BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Parent] [p]
			WHERE
				EXISTS(
					SELECT
						*
					FROM
						[Child] [c_1]
					WHERE
						[c_1].[ParentID] > 1 AND [p].[ParentID] = [c_1].[ParentID]
				)
		)
			THEN 1
		ELSE 0
	END

