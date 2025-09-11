BeforeExecute
-- SqlServer.2016

SELECT TOP (1)
	[p].[Id],
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
	([p].[DIM_Company] IS NULL OR [p].[DIM_Company] = N'' OR [p].[DIM_Company] = N'1' OR [p].[DIM_Company] = N'2' OR [p].[DIM_Company] = N'3' OR [p].[DIM_Company] = N'4' OR [p].[DIM_Company] = N'5' OR [p].[DIM_Company] = N'6' OR [p].[DIM_Company] = N'7' OR [p].[DIM_Company] = N'8' OR [p].[DIM_Company] = N'9' OR [p].[DIM_Company] = N'0') AND
	([p].[DIM_Branch] IS NULL OR [p].[DIM_Branch] = N'' OR [p].[DIM_Branch] = N'1' OR [p].[DIM_Branch] = N'2' OR [p].[DIM_Branch] = N'3' OR [p].[DIM_Branch] = N'4' OR [p].[DIM_Branch] = N'5' OR [p].[DIM_Branch] = N'6' OR [p].[DIM_Branch] = N'7' OR [p].[DIM_Branch] = N'8' OR [p].[DIM_Branch] = N'9' OR [p].[DIM_Branch] = N'0') AND
	([p].[DIM_Location] IS NULL OR [p].[DIM_Location] = N'' OR [p].[DIM_Location] = N'1' OR [p].[DIM_Location] = N'2' OR [p].[DIM_Location] = N'3' OR [p].[DIM_Location] = N'4' OR [p].[DIM_Location] = N'5' OR [p].[DIM_Location] = N'6' OR [p].[DIM_Location] = N'7' OR [p].[DIM_Location] = N'8' OR [p].[DIM_Location] = N'9' OR [p].[DIM_Location] = N'0') AND
	([p].[DIM_MSegment] IS NULL OR [p].[DIM_MSegment] = N'' OR [p].[DIM_MSegment] = N'1' OR [p].[DIM_MSegment] = N'2' OR [p].[DIM_MSegment] = N'3' OR [p].[DIM_MSegment] = N'4' OR [p].[DIM_MSegment] = N'5' OR [p].[DIM_MSegment] = N'6' OR [p].[DIM_MSegment] = N'7' OR [p].[DIM_MSegment] = N'8' OR [p].[DIM_MSegment] = N'9' OR [p].[DIM_MSegment] = N'0') AND
	([p].[DIM_Make] IS NULL OR [p].[DIM_Make] = N'' OR [p].[DIM_Make] = N'1' OR [p].[DIM_Make] = N'2' OR [p].[DIM_Make] = N'3' OR [p].[DIM_Make] = N'4' OR [p].[DIM_Make] = N'5' OR [p].[DIM_Make] = N'6' OR [p].[DIM_Make] = N'7' OR [p].[DIM_Make] = N'8' OR [p].[DIM_Make] = N'9' OR [p].[DIM_Make] = N'0')

