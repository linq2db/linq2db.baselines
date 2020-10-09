BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [SampleClass]
(
	[Id]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	'6'
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[t1].[Id], 
	[t1].[Value]
FROM
	[SampleClass] [t1]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[r].[Id], 
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '%[[]0%'

BeforeExecute
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC

SELECT 
	[r].[Id], 
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '%[0-9]%'

BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[r].[Id], 
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '[0'

BeforeExecute
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC

SELECT 
	[r].[Id], 
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '[0-9]'

BeforeExecute
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC

DROP TABLE [SampleClass]

