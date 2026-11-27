-- SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'Central European Standard Time'

SELECT TOP (2)
	([r].[Dto] AT TIME ZONE @p)
FROM
	[ZonedRow] [r]

