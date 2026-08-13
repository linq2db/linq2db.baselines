-- SqlServer.2022
SELECT TOP (1)
	BINARY_CHECKSUM([p].[personid], [p].[firstname])
FROM
	[person] [p]
WHERE
	[p].[personid] = 1

