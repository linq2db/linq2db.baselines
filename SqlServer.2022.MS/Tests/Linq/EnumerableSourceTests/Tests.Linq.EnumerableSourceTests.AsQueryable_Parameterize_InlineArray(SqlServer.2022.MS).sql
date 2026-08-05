-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @Data NVarChar(4000) -- String
SET     @Data = N'Data 0'
DECLARE @Id_1 Int -- Int32
SET     @Id_1 = 1
DECLARE @Data_1 NVarChar(4000) -- String
SET     @Data_1 = N'Data 1'

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	(VALUES
		(@Id,@Data), (@Id_1,@Data_1)
	) [t1]([Id], [Data])

