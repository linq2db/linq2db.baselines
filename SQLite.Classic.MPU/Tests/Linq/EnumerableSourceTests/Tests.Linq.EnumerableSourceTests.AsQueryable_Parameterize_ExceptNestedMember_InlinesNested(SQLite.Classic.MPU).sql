-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 7777
DECLARE @Id_1  -- Int32
SET     @Id_1 = 7778

SELECT
	[p].[Id],
	[p].[Address_Zip]
FROM
	(
		SELECT NULL [Id], NULL [Address_Zip] WHERE 1 = 0
		UNION ALL
		VALUES
			(@Id,'Z7777'), (@Id_1,'Z7778')
		) [p]

