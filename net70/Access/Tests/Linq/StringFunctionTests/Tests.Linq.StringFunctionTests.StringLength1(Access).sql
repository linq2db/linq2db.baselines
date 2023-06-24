BeforeExecute
-- Access AccessOleDb

DROP TABLE [IsNullOrEmptyTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [IsNullOrEmptyTable]
(
	[Id]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value VarWChar(3) -- String
SET     @Value = '   '

INSERT INTO [IsNullOrEmptyTable]
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
DECLARE @Value VarWChar -- String
SET     @Value = ''

INSERT INTO [IsNullOrEmptyTable]
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
	[p].[Id],
	[p].[Value]
FROM
	[IsNullOrEmptyTable] [p]
WHERE
	Len([p].[Value]) = 0

BeforeExecute
-- Access AccessOleDb

DROP TABLE [IsNullOrEmptyTable]

