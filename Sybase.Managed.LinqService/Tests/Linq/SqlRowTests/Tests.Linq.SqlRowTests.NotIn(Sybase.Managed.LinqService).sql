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
	([i].[One] <> 1 OR [i].[Two] <> [i].[One] * 2)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two] <> [i].[One] * 2 OR [i].[Three] <> [i].[Four] - 1) AND
	([i].[One] <> 0 OR [i].[Two] <> 7 OR [i].[Three] <> 9) AND
	([i].[One] >= NULL OR [i].[Two] <> -1 OR [i].[Three] <> [i].[Four])

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Three] <> [i].[One] * 2 OR [i].[Four] <> [i].[Four] - 1) AND
	([i].[One] <> 0 OR [i].[Three] <> 7 OR [i].[Four] <> 9) AND
	([i].[One] >= NULL OR [i].[Three] <> 2)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two] <> [i].[One] * 2 OR [i].[Four] <> [i].[Four] - 1) AND
	([i].[One] <> 0 OR [i].[Two] <> 7 OR [i].[Four] <> 9) AND
	([i].[One] >= NULL OR [i].[Two] <> 2)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Nil] <> [i].[One] OR [i].[Two] <> [i].[One] * 2 OR [i].[Four] <> [i].[Four] - 1) AND
	([i].[Nil] <> 0 OR [i].[Two] <> 7 OR [i].[Four] <> 9) AND
	([i].[Nil] >= NULL OR [i].[Two] <> 2)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Ints') IS NOT NULL)
	DROP TABLE [Ints]

