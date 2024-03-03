﻿BeforeExecute
-- Access AccessOleDb

DROP TABLE [Table1788]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Table1788]
(
	[Id]     Int NOT NULL,
	[Value1] Int NOT NULL,

	CONSTRAINT [PK_Table1788] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 11

INSERT INTO [Table1788]
(
	[Id],
	[Value1]
)
VALUES
(
	@Id,
	@Value1
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 22

INSERT INTO [Table1788]
(
	[Id],
	[Value1]
)
VALUES
(
	@Id,
	@Value1
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 33

INSERT INTO [Table1788]
(
	[Id],
	[Value1]
)
VALUES
(
	@Id,
	@Value1
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Value1]
FROM
	[Table1788] [t1]

BeforeExecute
-- Access AccessOleDb

SELECT
	[l].[Id],
	[l].[Value1]
FROM
	[Table1788] [p]
		LEFT JOIN [Table1788] [l] ON (([l].[Id] = [p].[Id] + 1))

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Table1788]

