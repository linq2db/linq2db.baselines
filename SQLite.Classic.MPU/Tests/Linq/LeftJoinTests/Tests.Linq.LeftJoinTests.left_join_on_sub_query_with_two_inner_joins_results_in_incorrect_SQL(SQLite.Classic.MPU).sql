-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [A]
(
	[Id]
)
VALUES
(
	@Id
)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[bc].[AId],
	[bc].[Id],
	[c_1].[Id]
FROM
	[A] [t1]
		LEFT JOIN ([B] [bc]
			INNER JOIN [C] [c_1] ON [bc].[Id] = [c_1].[BId])
		ON [t1].[Id] = [bc].[AId]

