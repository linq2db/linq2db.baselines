-- SqlCe
DECLARE @Data NVarChar(9) -- String
SET     @Data = 'Data 7777'
DECLARE @Data_1 NVarChar(9) -- String
SET     @Data_1 = 'Data 7778'

SELECT
	[t1].[Id],
	[t1].[Data] as [Data_1]
FROM
	(
		SELECT 7777 AS [Id], @Data AS [Data]
		UNION ALL
		SELECT 7778 AS [Id], @Data_1 AS [Data]) [t1]

