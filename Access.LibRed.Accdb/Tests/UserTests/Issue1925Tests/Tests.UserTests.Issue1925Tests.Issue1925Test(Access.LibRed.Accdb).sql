-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	[r].[Id]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '%]'

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	[r].[Id]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE ']%'

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	[r].[Id]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '%[-]%'

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '%[[]]%'

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '%[[]0%'

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @asParamUnterm NVarChar(6) -- String
SET     @asParamUnterm = '%[[]0%'

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE @asParamUnterm

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '%[[]0[-]9]%'

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '%6%'

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '[0'

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @asParamUnterm NVarChar(2) -- String
SET     @asParamUnterm = '[0'

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE @asParamUnterm

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE '[0-9]'

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @asParam NVarChar(5) -- String
SET     @asParam = '[0-9]'

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE @asParam

