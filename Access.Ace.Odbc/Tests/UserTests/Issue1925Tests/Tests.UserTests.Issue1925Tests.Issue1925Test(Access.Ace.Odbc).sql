BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [SampleClass]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [SampleClass]
(
	[Id]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value NVarChar(1) -- String
SET     @Value = '6'

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'x[0-9]x'

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Value NVarChar(4) -- String
SET     @Value = 'x[0x'

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Value NVarChar(4) -- String
SET     @Value = 'x[]x'

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @Value NVarChar(2) -- String
SET     @Value = 'x]'

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @Value NVarChar(2) -- String
SET     @Value = ']x'

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[r].[Id]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '%]'

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[r].[Id]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE ']%'

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[r].[Id]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '%[-]%'

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '%[[]]%'

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '%[[]0%'

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @asParamUnterm NVarChar(6) -- String
SET     @asParamUnterm = '%[[]0%'

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '%[[]0[-]9]%'

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '%6%'

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '[0'

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @asParamUnterm NVarChar(2) -- String
SET     @asParamUnterm = '[0'

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '[0-9]'

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @asParam NVarChar(5) -- String
SET     @asParam = '[0-9]'

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [SampleClass]

