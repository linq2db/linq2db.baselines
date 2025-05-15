BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[x].[Id],
	[x].[StringValue]
FROM
	[WhereWithString] [x]
WHERE
	CASE
		WHEN [x].[StringValue] LIKE N'%Str%' ESCAPE N'~' THEN 1
		WHEN [x].[StringValue] NOT LIKE N'%Str%' ESCAPE N'~' THEN 0
		ELSE NULL
	END = 1 AND
	[x].[StringValue] IS NOT NULL

