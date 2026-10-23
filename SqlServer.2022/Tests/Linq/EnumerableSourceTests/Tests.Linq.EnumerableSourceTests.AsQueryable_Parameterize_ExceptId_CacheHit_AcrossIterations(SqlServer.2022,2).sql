-- SqlServer.2022
DECLARE @Data NVarChar(4000) -- String
SET     @Data = N'Data 20'
DECLARE @Data_1 NVarChar(4000) -- String
SET     @Data_1 = N'Data 21'
DECLARE @Data_2 NVarChar(4000) -- String
SET     @Data_2 = N'Data 22'

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	(VALUES
		(20,@Data), (21,@Data_1), (22,@Data_2)
	) [t1]([Id], [Data])

