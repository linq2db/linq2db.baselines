-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 10
DECLARE @Data NVarChar(7) -- String
SET     @Data = 'Data 10'
DECLARE @Id_1  -- Int32
SET     @Id_1 = 11
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
			(@Id,@Data), (@Id_1,@Data_1)
		) [t1]

