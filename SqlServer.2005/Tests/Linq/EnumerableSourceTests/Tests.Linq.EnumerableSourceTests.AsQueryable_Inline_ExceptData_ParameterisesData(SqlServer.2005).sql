-- SqlServer.2005
DECLARE @Data NVarChar(4000) -- String
SET     @Data = N'Data 7777'
DECLARE @Data_1 NVarChar(4000) -- String
SET     @Data_1 = N'Data 7778'

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	(
		SELECT 7777 AS [Id], @Data AS [Data]
		UNION ALL
		SELECT 7778, @Data_1) [t1]
ORDER BY
	[t1].[Id]

