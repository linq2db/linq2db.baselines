-- SQLite.Classic SQLite
DECLARE @Data NVarChar(7) -- String
SET     @Data = 'Data 10'
DECLARE @Data_1 NVarChar(7) -- String
SET     @Data_1 = 'Data 11'

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	(
		SELECT NULL [Id], NULL [Data] WHERE 1 = 0
		UNION ALL
		VALUES
			(10,@Data), (11,@Data_1)
		) [t1]

