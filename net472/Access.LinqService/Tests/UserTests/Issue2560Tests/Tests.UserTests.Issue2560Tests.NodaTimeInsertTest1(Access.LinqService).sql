BeforeExecute
-- Access AccessOleDb

DROP TABLE [DataClass]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [DataClass]
(
	[Id]    Int      NOT NULL,
	[Value] DateTime NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @Value Date -- DateTime
SET     @Value = #2020-02-29 17:54:55#

INSERT INTO [DataClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[DataClass] [t1]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [DataClass]

