-- SqlCe
DECLARE @Data NVarChar(7) -- String
SET     @Data = 'Data 10'
DECLARE @Data_1 NVarChar(7) -- String
SET     @Data_1 = 'Data 11'

SELECT
	[t1].[Id],
	[t1].[Data] as [Data_1]
FROM
	(
		SELECT 10 AS [Id], @Data AS [Data]
		UNION ALL
		SELECT 11 AS [Id], @Data_1 AS [Data]) [t1]

