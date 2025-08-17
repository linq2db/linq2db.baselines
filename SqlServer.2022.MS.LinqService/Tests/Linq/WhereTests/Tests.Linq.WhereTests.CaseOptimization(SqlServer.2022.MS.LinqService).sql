BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

SELECT
	[x].[Id],
	[x].[StringValue]
FROM
	[WhereWithString] [x]
WHERE
	[x].[StringValue] LIKE N'%Str%' ESCAPE N'~' AND [x].[StringValue] IS NOT NULL

