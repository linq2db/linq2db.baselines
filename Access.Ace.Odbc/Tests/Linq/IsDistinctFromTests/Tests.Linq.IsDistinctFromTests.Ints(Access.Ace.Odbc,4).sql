BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Src]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Src]
(
	[Int]            Int           NOT NULL,
	[NullableInt]    Int               NULL,
	[String]         NVarChar(255)     NULL,
	[NullableString] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Int Int -- Int32
SET     @Int = 2
DECLARE @NullableInt Int -- Int32
SET     @NullableInt = 2
DECLARE @String NVarChar(3) -- String
SET     @String = 'abc'
DECLARE @NullableString NVarChar(3) -- String
SET     @NullableString = 'abc'

INSERT INTO [Src]
(
	[Int],
	[NullableInt],
	[String],
	[NullableString]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Int Int -- Int32
SET     @Int = 3
DECLARE @NullableInt Int -- Int32
SET     @NullableInt = NULL
DECLARE @String NVarChar(3) -- String
SET     @String = 'def'
DECLARE @NullableString NVarChar -- String
SET     @NullableString = NULL

INSERT INTO [Src]
(
	[Int],
	[NullableInt],
	[String],
	[NullableString]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] <> ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NULL OR [s].[NullableInt] <> ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] IS NULL OR [s].[NullableInt] <> ?)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Src]

