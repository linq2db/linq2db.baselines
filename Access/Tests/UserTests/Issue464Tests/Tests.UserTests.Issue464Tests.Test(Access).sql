BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Issue464]
(
	[Id]    Int NOT NULL,
	[Value] Int     NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Integer -- Int32
SET     @Value = 1

INSERT INTO [Issue464]
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
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value Integer -- Int32
SET     @Value = 2

INSERT INTO [Issue464]
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
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value Integer -- Int32
SET     @Value = 3

INSERT INTO [Issue464]
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
	[Issue464] [t1]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue464]

