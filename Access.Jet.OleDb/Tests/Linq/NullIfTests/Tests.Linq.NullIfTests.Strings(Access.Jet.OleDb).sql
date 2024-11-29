BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Src]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Src]
(
	[Int]            Int           NOT NULL,
	[NullableInt]    Int               NULL,
	[String]         NVarChar(255)     NULL,
	[NullableString] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Int Integer -- Int32
SET     @Int = 2
DECLARE @NullableInt Integer -- Int32
SET     @NullableInt = 2
DECLARE @String VarWChar(3) -- String
SET     @String = 'abc'
DECLARE @NullableString VarWChar(3) -- String
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
	@Int,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Int Integer -- Int32
SET     @Int = 3
DECLARE @NullableInt Integer -- Int32
SET     @NullableInt = NULL
DECLARE @String VarWChar(3) -- String
SET     @String = 'def'
DECLARE @NullableString VarWChar -- String
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
	@Int,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	IIF([s].[String] = 'abc', null, [s].[String])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	IIF([s].[String] = 'xyz', null, [s].[String])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	IIF([s].[String] = NULL, null, [s].[String])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	IIF([s].[NullableString] = 'abc', null, [s].[NullableString])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	IIF([s].[NullableString] = 'xyz', null, [s].[NullableString])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	IIF([s].[NullableString] = NULL, null, [s].[NullableString])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Src]

