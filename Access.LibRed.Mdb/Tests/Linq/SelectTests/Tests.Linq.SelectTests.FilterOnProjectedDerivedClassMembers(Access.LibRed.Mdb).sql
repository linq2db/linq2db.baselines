-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @filter NVarChar(6) -- String
SET     @filter = '%test%'
DECLARE @filter_1 NVarChar(6) -- String
SET     @filter_1 = '%test%'

SELECT
	[q].[Id],
	[q].[Name],
	[q].[ContactEmail],
	CASE
		WHEN [q].[Enabled] IS NULL THEN False
		ELSE [q].[Enabled]
	END
FROM
	[EnumClientRecord] [q]
WHERE
	[q].[ClientType] = 'Client' AND ([q].[Name] LIKE @filter OR [q].[ContactEmail] LIKE @filter_1)

