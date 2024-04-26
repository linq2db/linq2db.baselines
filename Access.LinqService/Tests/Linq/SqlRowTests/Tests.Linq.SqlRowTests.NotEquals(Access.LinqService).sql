﻿BeforeExecute
-- Access AccessOleDb

DROP TABLE [Ints]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Ints]
(
	[One]   Int NOT NULL,
	[Two]   Int NOT NULL,
	[Three] Int NOT NULL,
	[Four]  Int NOT NULL,
	[Five]  Int NOT NULL,
	[Nil]   Int     NULL
)

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] <> [i].[One] OR [i].[Two] <> [i].[One] * 2 OR [i].[Three] <> [i].[Four] - 1)

BeforeExecute
-- Access AccessOleDb

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] <> [i].[One] OR [i].[Two] <> [i].[Two] OR [i].[Four] <> [i].[Three])

BeforeExecute
-- Access AccessOleDb

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] <> [i].[One] OR [i].[Nil] <> [i].[Two] OR [i].[Three] <> [i].[Three])

BeforeExecute
-- Access AccessOleDb

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	(1 <> [i].[One] OR [i].[Nil] <> [i].[Nil] OR 4 <> [i].[Three])

BeforeExecute
-- Access AccessOleDb

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	(1 <> [i].[One] OR NULL >= [i].[Nil] OR 4 <> [i].[Three])

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Ints]

