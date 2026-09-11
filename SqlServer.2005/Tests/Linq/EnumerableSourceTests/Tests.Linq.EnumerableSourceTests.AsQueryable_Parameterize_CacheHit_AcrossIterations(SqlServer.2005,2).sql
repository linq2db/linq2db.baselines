-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 20
DECLARE @Data NVarChar(4000) -- String
SET     @Data = N'Data 20'
DECLARE @Id_1 Int -- Int32
SET     @Id_1 = 21
DECLARE @Data_1 NVarChar(4000) -- String
SET     @Data_1 = N'Data 21'
DECLARE @Id_2 Int -- Int32
SET     @Id_2 = 22
DECLARE @Data_2 NVarChar(4000) -- String
SET     @Data_2 = N'Data 22'

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	(
		SELECT @Id AS [Id], @Data AS [Data]
		UNION ALL
		SELECT @Id_1, @Data_1
		UNION ALL
		SELECT @Id_2, @Data_2) [t1]

