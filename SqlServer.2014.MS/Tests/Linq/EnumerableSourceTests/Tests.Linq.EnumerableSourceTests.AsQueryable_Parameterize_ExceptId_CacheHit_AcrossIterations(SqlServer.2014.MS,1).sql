-- SqlServer.2014.MS SqlServer.2014
DECLARE @Data NVarChar(4000) -- String
SET     @Data = N'Data 10'
DECLARE @Data_1 NVarChar(4000) -- String
SET     @Data_1 = N'Data 11'

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	(VALUES
		(10,@Data), (11,@Data_1)
	) [t1]([Id], [Data])

