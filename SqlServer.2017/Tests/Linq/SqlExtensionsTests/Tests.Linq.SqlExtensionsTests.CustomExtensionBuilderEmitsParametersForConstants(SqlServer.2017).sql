-- SqlServer.2017
DECLARE @p NVarChar(4000) -- String
SET     @p = N'test'

UPDATE
	[JsonModifySampleTable]
SET
	[Object] = JSON_MODIFY([JsonModifySampleTable].[Object], N'$.Sample', @p)

