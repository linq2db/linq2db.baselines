-- SqlServer.2008

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Parent] [p]
			WHERE
				[p].[Value1] IS NULL AND [p].[ParentID] = CASE
					WHEN [p].[Value1] IS NULL THEN NULL
					ELSE CAST(N'SHOULD NOT BE CALLED' AS INT)
				END
		)
			THEN 1
		ELSE 0
	END

