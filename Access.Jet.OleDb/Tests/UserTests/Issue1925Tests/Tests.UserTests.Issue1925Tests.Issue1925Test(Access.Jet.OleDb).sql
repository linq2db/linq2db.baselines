BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [SampleClass]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [SampleClass]
(
	[Id]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value VarWChar(1) -- String
SET     @Value = '6'

INSERT INTO [SampleClass]
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value VarWChar(7) -- String
SET     @Value = 'x[0-9]x'

INSERT INTO [SampleClass]
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value VarWChar(4) -- String
SET     @Value = 'x[0x'

INSERT INTO [SampleClass]
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Value VarWChar(4) -- String
SET     @Value = 'x[]x'

INSERT INTO [SampleClass]
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Value VarWChar(2) -- String
SET     @Value = 'x]'

INSERT INTO [SampleClass]
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Value VarWChar(2) -- String
SET     @Value = ']x'

INSERT INTO [SampleClass]
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
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[r].[Id]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '%]'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[r].[Id]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE ']%'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[r].[Id]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '%[-]%'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '%[[]]%'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '%[[]0%'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @asParamUnterm VarWChar(6) -- String
SET     @asParamUnterm = '%[[]0%'

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE @asParamUnterm

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '%[[]0[-]9]%'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '%6%'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '[0'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @asParamUnterm VarWChar(2) -- String
SET     @asParamUnterm = '[0'

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE @asParamUnterm

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '[0-9]'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @asParam VarWChar(5) -- String
SET     @asParam = '[0-9]'

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE @asParam

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [SampleClass]

