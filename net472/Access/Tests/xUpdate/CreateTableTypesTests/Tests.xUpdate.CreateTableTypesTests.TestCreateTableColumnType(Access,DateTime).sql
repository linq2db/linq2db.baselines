﻿BeforeExecute
-- Access AccessOleDb

CREATE TABLE [CreateTableTypes]
(
	[Id]       Int      NOT NULL,
	[DateTime] DateTime NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @DateTime Date -- DateTime
SET     @DateTime = #2000-01-01#

INSERT INTO [CreateTableTypes]
(
	[Id],
	[DateTime]
)
VALUES
(
	@Id,
	@DateTime
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @DateTime Date -- DateTime
SET     @DateTime = #2018-11-24 01:02:03#

INSERT INTO [CreateTableTypes]
(
	[Id],
	[DateTime]
)
VALUES
(
	@Id,
	@DateTime
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[DateTime]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [CreateTableTypes]

