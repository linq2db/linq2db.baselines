-- Sybase.Managed Sybase
DECLARE @Data UniVarChar(7) -- String
SET     @Data = 'Data 10'
DECLARE @Data_1 UniVarChar(7) -- String
SET     @Data_1 = 'Data 11'

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	(
		SELECT 10 AS [Id], @Data AS [Data]
		UNION ALL
		SELECT 11, @Data_1) [t1]

