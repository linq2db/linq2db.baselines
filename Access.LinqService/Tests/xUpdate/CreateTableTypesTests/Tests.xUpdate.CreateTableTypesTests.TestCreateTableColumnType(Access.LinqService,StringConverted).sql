﻿BeforeExecute
-- Access AccessOleDb

DROP TABLE [CreateTableTypes]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [CreateTableTypes]
(
	[StringConverted] NVarChar NOT NULL,
	[Id]              Int      NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StringConverted VarWChar(4) -- String
SET     @StringConverted = 'null'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[StringConverted]
)
VALUES
(
	@Id,
	@StringConverted
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StringConverted VarWChar(53) -- String
SET     @StringConverted = '[{"Item1":1,"Item2":"one"},{"Item1":2,"Item2":"two"}]'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[StringConverted]
)
VALUES
(
	@Id,
	@StringConverted
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[StringConverted]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [CreateTableTypes]

