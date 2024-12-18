BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Issue3674Tests]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Issue3674Tests]', N'U') IS NULL)
	CREATE TABLE [Issue3674Tests]
	(
		[Code]         NVarChar(30) NOT NULL,
		[DIM_Company]  NVarChar(30)     NULL,
		[DIM_Branch]   NVarChar(30)     NULL,
		[DIM_Location] NVarChar(30)     NULL,
		[DIM_MSegment] NVarChar(30)     NULL,
		[DIM_Make]     NVarChar(30)     NULL
	)

BeforeExecute
-- SqlServer.2017

SELECT TOP (1)
	[p].[Code],
	[p].[DIM_Company],
	[p].[DIM_Branch],
	[p].[DIM_Location],
	[p].[DIM_MSegment],
	[p].[DIM_Make]
FROM
	[Issue3674Tests] [p]
WHERE
	[p].[Code] = N'42' AND
	([p].[DIM_Company] IS NULL OR [p].[DIM_Company] = N'' AND [p].[DIM_Company] IS NOT NULL OR [p].[DIM_Company] = N'1' AND [p].[DIM_Company] IS NOT NULL OR [p].[DIM_Company] = N'2' AND [p].[DIM_Company] IS NOT NULL OR [p].[DIM_Company] = N'3' AND [p].[DIM_Company] IS NOT NULL OR [p].[DIM_Company] = N'4' AND [p].[DIM_Company] IS NOT NULL OR [p].[DIM_Company] = N'5' AND [p].[DIM_Company] IS NOT NULL OR [p].[DIM_Company] = N'6' AND [p].[DIM_Company] IS NOT NULL OR [p].[DIM_Company] = N'7' AND [p].[DIM_Company] IS NOT NULL OR [p].[DIM_Company] = N'8' AND [p].[DIM_Company] IS NOT NULL OR [p].[DIM_Company] = N'9' AND [p].[DIM_Company] IS NOT NULL OR [p].[DIM_Company] = N'0' AND [p].[DIM_Company] IS NOT NULL) AND
	([p].[DIM_Branch] IS NULL OR [p].[DIM_Branch] = N'' AND [p].[DIM_Branch] IS NOT NULL OR [p].[DIM_Branch] = N'1' AND [p].[DIM_Branch] IS NOT NULL OR [p].[DIM_Branch] = N'2' AND [p].[DIM_Branch] IS NOT NULL OR [p].[DIM_Branch] = N'3' AND [p].[DIM_Branch] IS NOT NULL OR [p].[DIM_Branch] = N'4' AND [p].[DIM_Branch] IS NOT NULL OR [p].[DIM_Branch] = N'5' AND [p].[DIM_Branch] IS NOT NULL OR [p].[DIM_Branch] = N'6' AND [p].[DIM_Branch] IS NOT NULL OR [p].[DIM_Branch] = N'7' AND [p].[DIM_Branch] IS NOT NULL OR [p].[DIM_Branch] = N'8' AND [p].[DIM_Branch] IS NOT NULL OR [p].[DIM_Branch] = N'9' AND [p].[DIM_Branch] IS NOT NULL OR [p].[DIM_Branch] = N'0' AND [p].[DIM_Branch] IS NOT NULL) AND
	([p].[DIM_Location] IS NULL OR [p].[DIM_Location] = N'' AND [p].[DIM_Location] IS NOT NULL OR [p].[DIM_Location] = N'1' AND [p].[DIM_Location] IS NOT NULL OR [p].[DIM_Location] = N'2' AND [p].[DIM_Location] IS NOT NULL OR [p].[DIM_Location] = N'3' AND [p].[DIM_Location] IS NOT NULL OR [p].[DIM_Location] = N'4' AND [p].[DIM_Location] IS NOT NULL OR [p].[DIM_Location] = N'5' AND [p].[DIM_Location] IS NOT NULL OR [p].[DIM_Location] = N'6' AND [p].[DIM_Location] IS NOT NULL OR [p].[DIM_Location] = N'7' AND [p].[DIM_Location] IS NOT NULL OR [p].[DIM_Location] = N'8' AND [p].[DIM_Location] IS NOT NULL OR [p].[DIM_Location] = N'9' AND [p].[DIM_Location] IS NOT NULL OR [p].[DIM_Location] = N'0' AND [p].[DIM_Location] IS NOT NULL) AND
	([p].[DIM_MSegment] IS NULL OR [p].[DIM_MSegment] = N'' AND [p].[DIM_MSegment] IS NOT NULL OR [p].[DIM_MSegment] = N'1' AND [p].[DIM_MSegment] IS NOT NULL OR [p].[DIM_MSegment] = N'2' AND [p].[DIM_MSegment] IS NOT NULL OR [p].[DIM_MSegment] = N'3' AND [p].[DIM_MSegment] IS NOT NULL OR [p].[DIM_MSegment] = N'4' AND [p].[DIM_MSegment] IS NOT NULL OR [p].[DIM_MSegment] = N'5' AND [p].[DIM_MSegment] IS NOT NULL OR [p].[DIM_MSegment] = N'6' AND [p].[DIM_MSegment] IS NOT NULL OR [p].[DIM_MSegment] = N'7' AND [p].[DIM_MSegment] IS NOT NULL OR [p].[DIM_MSegment] = N'8' AND [p].[DIM_MSegment] IS NOT NULL OR [p].[DIM_MSegment] = N'9' AND [p].[DIM_MSegment] IS NOT NULL OR [p].[DIM_MSegment] = N'0' AND [p].[DIM_MSegment] IS NOT NULL) AND
	([p].[DIM_Make] IS NULL OR [p].[DIM_Make] = N'' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'1' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'2' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'3' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'4' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'5' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'6' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'7' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'8' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'9' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'0' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'1' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'2' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'3' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'4' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'5' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'6' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'7' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'8' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'9' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'0' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'1' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'2' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'3' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'4' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'5' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'6' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'7' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'8' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'9' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'0' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'1' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'2' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'3' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'4' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'5' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'6' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'7' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'8' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'9' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'0' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'1' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'2' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'3' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'4' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'5' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'6' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'7' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'8' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'9' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'0' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'1' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'2' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'3' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'4' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'5' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'6' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'7' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'8' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'9' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'0' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'1' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'2' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'3' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'4' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'5' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'6' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'7' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'8' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'9' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'0' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'1' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'2' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'3' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'4' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'5' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'6' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'7' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'8' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'9' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'0' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'1' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'2' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'3' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'4' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'5' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'6' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'7' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'8' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'9' AND [p].[DIM_Make] IS NOT NULL OR [p].[DIM_Make] = N'0' AND [p].[DIM_Make] IS NOT NULL)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Issue3674Tests]

