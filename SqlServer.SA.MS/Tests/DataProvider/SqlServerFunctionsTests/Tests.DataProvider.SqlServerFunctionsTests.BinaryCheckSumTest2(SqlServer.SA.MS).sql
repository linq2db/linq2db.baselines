-- SqlServer.SA.MS SqlServer.2019
SELECT TOP (1)
	BINARY_CHECKSUM([p].[personid], [p].[firstname])
FROM
	[person] [p]
WHERE
	[p].[personid] = 1

