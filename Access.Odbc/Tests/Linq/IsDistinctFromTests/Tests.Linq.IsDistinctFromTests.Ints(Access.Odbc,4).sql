BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Src]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Src]
(
	[Int]            Int           NOT NULL,
	[NullableInt]    Int               NULL,
	[String]         NVarChar(255)     NULL,
	[NullableString] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC
DECLARE @value Int -- Int32
SET     @value = 4
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	IIF([s].[Int] = ? OR [s].[Int] IS NULL AND ? IS NULL, 0, 1) = 1

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @value Int -- Int32
SET     @value = 4
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	IIF([s].[NullableInt] = ? OR [s].[NullableInt] IS NULL AND ? IS NULL, 0, 1) = 1

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @value Int -- Int32
SET     @value = 4
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	IIF([s].[Int] = ? OR [s].[Int] IS NULL AND ? IS NULL, 0, 1) = 0

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @value Int -- Int32
SET     @value = 4
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	IIF([s].[NullableInt] = ? OR [s].[NullableInt] IS NULL AND ? IS NULL, 0, 1) = 0

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Src]

