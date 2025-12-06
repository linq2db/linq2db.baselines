-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @p NVarChar(4000) -- String
SET     @p = N'test'

UPDATE
	[SampleTable]
SET
	[Object] = JSON_MODIFY([SampleTable].[Object], N'$.Sample', @p)

