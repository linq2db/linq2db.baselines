BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Ints]

BeforeExecute
-- Access.Odbc AccessODBC

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
-- Access.Odbc AccessODBC
DECLARE @One Int -- Int32
SET     @One = 1
DECLARE @Two Int -- Int32
SET     @Two = 2
DECLARE @Three Int -- Int32
SET     @Three = 3
DECLARE @Four Int -- Int32
SET     @Four = 4
DECLARE @Five Int -- Int32
SET     @Five = 5
DECLARE @Nil Int -- Int32
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
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[One] < [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] < [i].[One] * 2) OR ([i].[One] > [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] > [i].[One] + [i].[One]))

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[One] < [i].[One] OR [i].[One] = [i].[One] AND [i].[Three] < [i].[One]) OR ([i].[One] > [i].[One] OR [i].[One] = [i].[One] AND [i].[Three] > [i].[Four]))

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[One] < [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] < [i].[Three]) OR ([i].[One] > [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] > [i].[Two]))

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[Two] < [i].[One] OR [i].[Two] = [i].[One] AND [i].[Five] < [i].[One]) OR ([i].[Two] > [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Five] > [i].[Two]))

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[Two] < [i].[One] OR [i].[Two] = [i].[One] AND [i].[Five] < [i].[One]) OR ([i].[Two] > [i].[Two] OR [i].[Two] = [i].[Two] AND [i].[Five] > [i].[Two]))

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[Two] < [i].[One] OR [i].[Two] = [i].[One] AND [i].[Nil] < [i].[One]) OR ([i].[Two] > [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Nil] > [i].[One]))

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[Two] < [i].[Two] OR [i].[Two] = [i].[Two] AND [i].[Nil] < [i].[One]) OR ([i].[Two] > [i].[Two] OR [i].[Two] = [i].[Two] AND [i].[Nil] > [i].[Three]))

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[Two] < [i].[One] OR [i].[Two] = [i].[One] AND [i].[Five] < [i].[Nil]) OR ([i].[Two] > [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Five] > [i].[Nil]))

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[Two] < [i].[One] OR [i].[Two] = [i].[One] AND [i].[Nil] < [i].[Nil]) OR ([i].[Two] > [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Nil] > [i].[Nil]))

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[Two] < [i].[Nil] OR [i].[Two] = [i].[Nil] AND [i].[Two] < [i].[One]) OR ([i].[Two] > [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Two] > [i].[Five]))

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Ints]

