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
DECLARE @Value VarWChar(4) -- String
SET     @Value = 'x   '

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
DECLARE @Value VarWChar(5) -- String
SET     @Value = 'xxxx '

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
	Len([p].[Value]) = 4

BeforeExecute
-- Access AccessOleDb

DROP TABLE [IsNullOrEmptyTable]

