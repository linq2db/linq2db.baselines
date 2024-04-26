﻿BeforeExecute
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
	Count(*)
FROM
	[Ints] [i]
WHERE
	NOT (([i].[One] > [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] >= [i].[One] * 2) AND ([i].[One] < [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] <= [i].[One] + [i].[One]))

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	NOT (([i].[One] > [i].[One] OR [i].[One] = [i].[One] AND [i].[Three] >= [i].[One]) AND ([i].[One] < [i].[One] OR [i].[One] = [i].[One] AND [i].[Three] <= [i].[Four]))

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	NOT (([i].[One] > [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] >= [i].[Three]) AND ([i].[One] < [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] <= [i].[Two]))

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	NOT (([i].[Two] > [i].[One] OR [i].[Two] = [i].[One] AND [i].[Five] >= [i].[One]) AND ([i].[Two] < [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Five] <= [i].[Two]))

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	NOT (([i].[Two] > [i].[One] OR [i].[Two] = [i].[One] AND [i].[Five] >= [i].[One]) AND ([i].[Two] < [i].[Two] OR [i].[Two] = [i].[Two] AND [i].[Five] <= [i].[Two]))

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	NOT (([i].[Two] > [i].[One] OR [i].[Two] = [i].[One] AND [i].[Nil] >= [i].[One]) AND ([i].[Two] < [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Nil] <= [i].[One]))

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	NOT (([i].[Two] > [i].[Two] OR [i].[Two] = [i].[Two] AND [i].[Nil] >= [i].[One]) AND ([i].[Two] < [i].[Two] OR [i].[Two] = [i].[Two] AND [i].[Nil] <= [i].[Three]))

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	NOT (([i].[Two] > [i].[One] OR [i].[Two] = [i].[One] AND [i].[Five] >= [i].[Nil]) AND ([i].[Two] < [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Five] <= [i].[Nil]))

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	NOT (([i].[Two] > [i].[One] OR [i].[Two] = [i].[One] AND [i].[Nil] >= [i].[Nil]) AND ([i].[Two] < [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Nil] <= [i].[Nil]))

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	NOT (([i].[Two] > [i].[Nil] OR [i].[Two] = [i].[Nil] AND [i].[Two] >= [i].[One]) AND ([i].[Two] < [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Two] <= [i].[Five]))

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Ints') IS NOT NULL)
	DROP TABLE [Ints]

