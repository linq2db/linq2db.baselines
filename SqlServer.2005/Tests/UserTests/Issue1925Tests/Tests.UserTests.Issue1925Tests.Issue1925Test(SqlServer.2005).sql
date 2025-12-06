-- SqlServer.2005

SELECT TOP (2)
	[r].[Id]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'%~]' ESCAPE N'~'

-- SqlServer.2005

SELECT TOP (2)
	[r].[Id]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'~]%' ESCAPE N'~'

-- SqlServer.2005

SELECT TOP (2)
	[r].[Id]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'%-%' ESCAPE N'~'

-- SqlServer.2005

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'%~[~]%' ESCAPE N'~'

-- SqlServer.2005

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'%~[0%' ESCAPE N'~'

-- SqlServer.2005
DECLARE @asParamUnterm NVarChar(4000) -- String
SET     @asParamUnterm = N'%~[0%'

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE @asParamUnterm ESCAPE N'~'

-- SqlServer.2005

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'%~[0-9~]%' ESCAPE N'~'

-- SqlServer.2005

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'%6%' ESCAPE N'~'

-- SqlServer.2005

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'[0'

-- SqlServer.2005
DECLARE @asParamUnterm NVarChar(4000) -- String
SET     @asParamUnterm = N'[0'

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE @asParamUnterm

-- SqlServer.2005

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'[0-9]'

-- SqlServer.2005
DECLARE @asParam NVarChar(4000) -- String
SET     @asParam = N'[0-9]'

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE @asParam

