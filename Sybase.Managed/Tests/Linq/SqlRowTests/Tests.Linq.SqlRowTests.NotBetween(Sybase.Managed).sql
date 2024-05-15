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
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	NOT ([i].[Two] >= [i].[One] * 2 AND [i].[Two] <= [i].[One] + [i].[One])

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	NOT ([i].[Three] >= [i].[One] AND [i].[Three] <= [i].[Four])

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Two] < [i].[Three]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	NOT (([i].[Two] > [i].[One] OR [i].[Two] = [i].[One] AND [i].[Five] >= [i].[One]) AND ([i].[Two] < [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Five] <= [i].[Two]))

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	NOT (([i].[Two] > [i].[One] OR [i].[Two] = [i].[One] AND [i].[Five] >= [i].[One]) AND [i].[Five] <= [i].[Two])

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	NOT (([i].[Two] > [i].[One] OR [i].[Two] = [i].[One] AND [i].[Nil] >= [i].[One]) AND ([i].[Two] < [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Nil] <= [i].[One]))

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	NOT ([i].[Nil] >= [i].[One] AND [i].[Nil] <= [i].[Three])

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	NOT (([i].[Two] > [i].[One] OR [i].[Two] = [i].[One] AND [i].[Five] >= [i].[Nil]) AND ([i].[Two] < [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Five] <= [i].[Nil]))

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	NOT (([i].[Two] > [i].[One] OR [i].[Two] = [i].[One] AND [i].[Nil] >= [i].[Nil]) AND ([i].[Two] < [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Nil] <= [i].[Nil]))

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	NOT (([i].[Two] > [i].[Nil] OR [i].[Two] = [i].[Nil] AND [i].[Two] >= [i].[One]) AND ([i].[Two] < [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Two] <= [i].[Five]))

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Ints') IS NOT NULL)
	DROP TABLE [Ints]

