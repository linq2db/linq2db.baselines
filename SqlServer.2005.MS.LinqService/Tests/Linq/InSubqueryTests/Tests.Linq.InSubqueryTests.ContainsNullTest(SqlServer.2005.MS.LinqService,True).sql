BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Parent] [c_1]
			WHERE
				[c_1].[Value1] IS NULL
		)
			THEN 1
		ELSE 0
	END

