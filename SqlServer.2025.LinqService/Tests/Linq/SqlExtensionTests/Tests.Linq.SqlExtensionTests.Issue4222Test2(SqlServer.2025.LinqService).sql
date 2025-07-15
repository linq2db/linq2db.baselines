BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[e].[Id],
	[e].[RecSrc],
	[e].[Value]
FROM
	[Entry] [e]
WHERE
	[e].[RecSrc] = N'default' AND [e].[Value] = 2007 OR
	[e].[RecSrc] = N'other' AND [e].[Value] = 2008

