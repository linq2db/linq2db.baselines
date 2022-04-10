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

INSERT INTO [Ints]
(
	[One],
	[Two],
	[Three],
	[Four],
	[Five],
	[Nil]
)
SELECT 1,2,3,4,5,NULL

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] <> [i].[One] OR [i].[Two] <> [i].[One] * 2 OR [i].[Three] <> [i].[Four] - 1)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] <> [i].[One] OR [i].[Two] <> [i].[Two] OR [i].[Four] <> [i].[Three])

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] <> [i].[One] OR [i].[Nil] <> [i].[Two] OR [i].[Three] <> [i].[Three])

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(1 <> [i].[One] OR [i].[Nil] <> [i].[Nil] OR 4 <> [i].[Three])

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(1 <> [i].[One] OR NULL >= [i].[Nil] OR 4 <> [i].[Three])

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Ints') IS NOT NULL)
	DROP TABLE [Ints]

