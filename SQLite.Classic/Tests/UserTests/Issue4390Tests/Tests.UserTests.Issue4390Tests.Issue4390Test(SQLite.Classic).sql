-- SQLite.Classic SQLite
DECLARE @InfeedAdviceID  -- Int32
SET     @InfeedAdviceID = 1

INSERT INTO [InventoryResourceDTO]
(
	[InfeedAdviceID]
)
VALUES
(
	@InfeedAdviceID
)

-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [InfeedAdviceDTO]
(
	[Id]
)
VALUES
(
	@Id
)

-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[InfeedAdviceDTO] [infeed]
		INNER JOIN [InventoryResourceDTO] [inventory] ON [infeed].[Id] = [inventory].[InfeedAdviceID]

