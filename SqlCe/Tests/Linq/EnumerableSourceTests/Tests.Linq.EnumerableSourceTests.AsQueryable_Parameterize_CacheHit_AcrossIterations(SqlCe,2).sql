-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 20
DECLARE @Data NVarChar(7) -- String
SET     @Data = 'Data 20'
DECLARE @Id_1 Int -- Int32
SET     @Id_1 = 21
DECLARE @Data_1 NVarChar(7) -- String
SET     @Data_1 = 'Data 21'
DECLARE @Id_2 Int -- Int32
SET     @Id_2 = 22
DECLARE @Data_2 NVarChar(7) -- String
SET     @Data_2 = 'Data 22'

SELECT
	[t1].[Id],
	[t1].[Data] as [Data_1]
FROM
	(
		SELECT @Id AS [Id], @Data AS [Data]
		UNION ALL
		SELECT @Id_1 AS [Id], @Data_1 AS [Data]
		UNION ALL
		SELECT @Id_2 AS [Id], @Data_2 AS [Data]) [t1]

