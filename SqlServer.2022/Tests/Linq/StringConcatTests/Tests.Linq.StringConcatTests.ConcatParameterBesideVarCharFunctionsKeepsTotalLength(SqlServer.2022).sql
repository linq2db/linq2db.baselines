-- SqlServer.2022
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'x'

SELECT TOP (2)
	CAST(Upper([t].[Left]) + Upper([t].[Right]) AS NVarChar(Max)) + Coalesce(@suffix, N'')
FROM
	[SplitVarCharRow] [t]

-- SqlServer.2022
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'x'

SELECT TOP (2)
	CAST(LTrim(RTrim([t].[Left])) + LTrim(RTrim([t].[Right])) AS NVarChar(Max)) + Coalesce(@suffix, N'')
FROM
	[SplitVarCharRow] [t]

