﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [CreateTableTypes]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [CreateTableTypes]
(
	[Id]            Int NOT NULL,
	[Int32Nullable] Int     NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Int32Nullable Integer -- Int32
SET     @Int32Nullable = NULL

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int32Nullable]
)
VALUES
(
	@Id,
	@Int32Nullable
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Int32Nullable Integer -- Int32
SET     @Int32Nullable = 2

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int32Nullable]
)
VALUES
(
	@Id,
	@Int32Nullable
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Int32Nullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [CreateTableTypes]

