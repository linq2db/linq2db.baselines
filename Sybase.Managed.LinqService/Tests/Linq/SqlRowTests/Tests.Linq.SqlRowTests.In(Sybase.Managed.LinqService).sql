BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Ints') IS NOT NULL)
	DROP TABLE [Ints]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Ints') IS NULL)
	EXECUTE('
		CREATE TABLE [Ints]
		(
			[One]   Int NOT NULL,
			[Two]   Int NOT NULL,
			[Three] Int NOT NULL,
			[Four]  Int NOT NULL,
			[Five]  Int NOT NULL,
			[Nil]   Int     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @One Integer -- Int32
SET     @One = 1
DECLARE @Two Integer -- Int32
SET     @Two = 2
DECLARE @Three Integer -- Int32
SET     @Three = 3
DECLARE @Four Integer -- Int32
SET     @Four = 4
DECLARE @Five Integer -- Int32
SET     @Five = 5
DECLARE @Nil Integer -- Int32
SET     @Nil = NULL

INSERT INTO [Ints]
(
	[One],
	[Two],
	[Three],
	[Four],
	[Five],
	[Nil]
)
VALUES
(
	@One,
	@Two,
	@Three,
	@Four,
	@Five,
	@Nil
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[One] = 1 AND [i].[Two] = [i].[One] * 2

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Two] = [i].[One] * 2 AND [i].[Three] = [i].[Four] - 1 OR
	[i].[One] = 0 AND [i].[Two] = 7 AND [i].[Three] = 9 OR
	[i].[One] >= NULL AND [i].[Two] = -1 AND [i].[Three] = [i].[Four]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Two] = [i].[One] * 2 AND [i].[Four] = [i].[Four] - 1 OR
	[i].[One] = 0 AND [i].[Two] = 7 AND [i].[Four] = 9 OR
	[i].[One] >= NULL AND [i].[Two] = 2

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Nil] = [i].[One] AND [i].[Two] = [i].[One] * 2 AND [i].[Four] = [i].[Four] - 1 OR
	[i].[Nil] = 0 AND [i].[Two] = 7 AND [i].[Four] = 9 OR
	[i].[Nil] >= NULL AND [i].[Two] = 2

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Ints') IS NOT NULL)
	DROP TABLE [Ints]

