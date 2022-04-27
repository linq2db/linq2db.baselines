BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Src]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Src]
(
	[Id]   Int         NOT NULL,
	[Int]  Int             NULL,
	[Enum] NVarChar(5)     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Int_1 Int -- Int32
SET     @Int_1 = NULL
DECLARE @Enum NVarChar -- String
SET     @Enum = NULL

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Int_1 Int -- Int32
SET     @Int_1 = 2
DECLARE @Enum NVarChar(3) -- String
SET     @Enum = 'TWO'

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	1 = 0

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	1 = 1

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	1 = 1

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Src]

