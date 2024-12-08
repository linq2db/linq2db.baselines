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
				[p].[Value1] IS NULL AND [p].[ParentID] = CASE
					WHEN [p].[Value1] IS NOT NULL THEN CAST(N'SHOULD NOT BE CALLED' AS INT)
					ELSE NULL
				END
		)
			THEN 1
		ELSE 0
	END

