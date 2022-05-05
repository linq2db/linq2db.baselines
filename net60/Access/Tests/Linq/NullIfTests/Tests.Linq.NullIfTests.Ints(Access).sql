﻿BeforeExecute
-- Access AccessOleDb

DROP TABLE [Src]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Src]
(
	[Int]            Int           NOT NULL,
	[NullableInt]    Int               NULL,
	[String]         NVarChar(255)     NULL,
	[NullableString] NVarChar(255)     NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Int_1 Integer -- Int32
SET     @Int_1 = 2
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
	@Int_1,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Int_1 Integer -- Int32
SET     @Int_1 = 3
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
	@Int_1,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[s].[Int]
FROM
	[Src] [s]

BeforeExecute
-- Access AccessOleDb

SELECT
	[s].[Int]
FROM
	[Src] [s]

BeforeExecute
-- Access AccessOleDb

SELECT
	[s].[Int]
FROM
	[Src] [s]

BeforeExecute
-- Access AccessOleDb

SELECT
	[s].[NullableInt]
FROM
	[Src] [s]

BeforeExecute
-- Access AccessOleDb

SELECT
	[s].[NullableInt]
FROM
	[Src] [s]

BeforeExecute
-- Access AccessOleDb

SELECT
	[s].[NullableInt]
FROM
	[Src] [s]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Src]

