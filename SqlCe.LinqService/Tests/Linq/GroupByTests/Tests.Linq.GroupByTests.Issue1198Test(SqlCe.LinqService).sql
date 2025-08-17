BeforeExecute
-- SqlCe (asynchronously)

SELECT TOP (1)
	COUNT(CASE
		WHEN [t].[Status] = 3 THEN 1
		ELSE NULL
	END) as [COUNT_1]
FROM
	[Issue1192Table] [t]
WHERE
	[t].[MyOtherId] = 12

