-- SqlCe
DECLARE @Data NVarChar(7) -- String
SET     @Data = 'Data 20'
DECLARE @Data_1 NVarChar(7) -- String
SET     @Data_1 = 'Data 21'
DECLARE @Data_2 NVarChar(7) -- String
SET     @Data_2 = 'Data 22'

SELECT
	[t1].[Id],
	[t1].[Data] as [Data_1]
FROM
	(
		SELECT 20 AS [Id], @Data AS [Data]
		UNION ALL
		SELECT 21 AS [Id], @Data_1 AS [Data]
		UNION ALL
		SELECT 22 AS [Id], @Data_2 AS [Data]) [t1]

