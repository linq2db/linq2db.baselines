BeforeExecute
-- SQLite.Classic SQLite
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

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[a_1].[Id],
	[bc].[AId],
	[bc].[Id],
	[c_1].[Id]
FROM
	[A] [a_1]
		LEFT JOIN ([B] [bc]
			INNER JOIN [C] [c_1] ON [bc].[Id] = [c_1].[BId])
		ON [a_1].[Id] = [bc].[AId]

