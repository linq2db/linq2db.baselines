﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Ints]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

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
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Two] < [i].[One] * 2 OR [i].[Two] = [i].[One] * 2 AND [i].[Three] < [i].[Four] - 1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Four] < [i].[Three]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Two] < [i].[Five] OR [i].[Two] = [i].[Five] AND [i].[Four] < [i].[Three]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Nil] < [i].[Two] OR [i].[Nil] = [i].[Two] AND [i].[One] < [i].[Three]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	0 < [i].[One] OR 0 = [i].[One] AND NULL < [i].[Two]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Ints]

