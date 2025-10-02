BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
OFFSET 3 ROWS FETCH NEXT 2 ROWS ONLY 

