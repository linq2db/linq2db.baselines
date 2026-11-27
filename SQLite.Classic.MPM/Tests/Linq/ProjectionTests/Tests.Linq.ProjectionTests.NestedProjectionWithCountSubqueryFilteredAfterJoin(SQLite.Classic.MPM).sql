-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @InfeedAdviceID Integer -- Int32
SET     @InfeedAdviceID = 1

INSERT INTO [NestedCountInventory]
(
	[InfeedAdviceID]
)
VALUES
(
	@InfeedAdviceID
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [NestedCountAdvice]
(
	[Id]
)
VALUES
(
	@Id
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[NestedCountAdvice] [infeed]
		INNER JOIN [NestedCountInventory] [inventory] ON [infeed].[Id] = [inventory].[InfeedAdviceID]

