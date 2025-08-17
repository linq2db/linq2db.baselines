BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	CASE
		WHEN EXISTS(
			SELECT TOP (1)
				[item_1].[Value]
			FROM
				[TakeSkipClass] [item_1]
			GROUP BY
				[item_1].[Value]
			HAVING
				COUNT(*) > 1
		)
			THEN 1
		ELSE 0
	END

