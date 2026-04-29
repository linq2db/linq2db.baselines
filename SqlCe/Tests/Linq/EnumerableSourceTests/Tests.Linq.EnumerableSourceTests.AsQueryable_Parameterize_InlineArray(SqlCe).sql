-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @Data NVarChar(6) -- String
SET     @Data = 'Data 0'
DECLARE @Id_1 Int -- Int32
SET     @Id_1 = 1
DECLARE @Data_1 NVarChar(6) -- String
SET     @Data_1 = 'Data 1'

SELECT
	[t1].[Id],
	[t1].[Data] as [Data_1]
FROM
	(
		SELECT @Id AS [Id], @Data AS [Data]
		UNION ALL
		SELECT @Id_1 AS [Id], @Data_1 AS [Data]) [t1]

