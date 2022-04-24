BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Src]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Src]
(
	[Id]  Int NOT NULL,
	[Int] Int     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Int_1 Int -- Int32
SET     @Int_1 = NULL

INSERT INTO [Src]
(
	[Id],
	[Int]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Int_1 Int -- Int32
SET     @Int_1 = 2

INSERT INTO [Src]
(
	[Id],
	[Int]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, -2)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, NULL)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, 2)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] NOT IN (NULL, 2)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] NOT IN (-1, 2)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Src]

