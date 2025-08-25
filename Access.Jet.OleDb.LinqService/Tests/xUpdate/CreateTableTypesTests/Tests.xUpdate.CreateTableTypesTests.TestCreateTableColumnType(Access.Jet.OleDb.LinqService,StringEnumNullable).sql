﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StringEnumNullable VarWChar -- String
SET     @StringEnumNullable = NULL

INSERT INTO [CreateTableTypes]
(
	[Id],
	[StringEnumNullable]
)
VALUES
(
	@Id,
	@StringEnumNullable
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StringEnumNullable VarWChar(2) -- String
SET     @StringEnumNullable = '40'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[StringEnumNullable]
)
VALUES
(
	@Id,
	@StringEnumNullable
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	[t1].[Id],
	[t1].[StringEnumNullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

