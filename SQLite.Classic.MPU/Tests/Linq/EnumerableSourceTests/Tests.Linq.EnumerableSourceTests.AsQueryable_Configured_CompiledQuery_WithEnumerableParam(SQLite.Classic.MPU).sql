-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 0
DECLARE @Data NVarChar(6) -- String
SET     @Data = 'Data 0'
DECLARE @Id_1  -- Int32
SET     @Id_1 = 1
DECLARE @Data_1 NVarChar(6) -- String
SET     @Data_1 = 'Data 1'

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
ORDER BY
	[t1].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 100
DECLARE @Data NVarChar(8) -- String
SET     @Data = 'Data 100'
DECLARE @Id_1  -- Int32
SET     @Id_1 = 101
DECLARE @Data_1 NVarChar(8) -- String
SET     @Data_1 = 'Data 101'
DECLARE @Id_2  -- Int32
SET     @Id_2 = 102
DECLARE @Data_2 NVarChar(8) -- String
SET     @Data_2 = 'Data 102'

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	(
		SELECT NULL [Id], NULL [Data] WHERE 1 = 0
		UNION ALL
		VALUES
			(@Id,@Data), (@Id_1,@Data_1), (@Id_2,@Data_2)
		) [t1]
ORDER BY
	[t1].[Id]

