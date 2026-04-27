-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @Data NVarChar(7) -- String
SET     @Data = 'Data 10'
DECLARE @Id_1 Int -- Int32
SET     @Id_1 = 11
DECLARE @Data_1 NVarChar(7) -- String
SET     @Data_1 = 'Data 11'

SELECT
	[t1].[Id],
	[t1].[Data] as [Data_1]
FROM
	(
		SELECT @Id AS [Id], @Data AS [Data]
		UNION ALL
		SELECT @Id_1 AS [Id], @Data_1 AS [Data]) [t1]

