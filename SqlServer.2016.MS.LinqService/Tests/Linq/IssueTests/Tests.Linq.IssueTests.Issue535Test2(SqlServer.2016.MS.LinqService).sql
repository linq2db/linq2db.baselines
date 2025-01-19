BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @filter NVarChar(4000) -- String
SET     @filter = N'%test%'
DECLARE @filter_1 NVarChar(4000) -- String
SET     @filter_1 = N'%test%'

SELECT
	[q].[Id],
	[q].[Name],
	[q].[ContactEmail],
	Coalesce([q].[Enabled], 0)
FROM
	[CustomerBase] [q]
WHERE
	[q].[ClientType] = N'Client' AND ([q].[Name] LIKE @filter ESCAPE N'~' OR [q].[ContactEmail] LIKE @filter_1 ESCAPE N'~')

