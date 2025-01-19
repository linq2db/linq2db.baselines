BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (2)
	[r].[Id]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'%~]' ESCAPE N'~'

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (2)
	[r].[Id]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'~]%' ESCAPE N'~'

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (2)
	[r].[Id]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'%-%' ESCAPE N'~'

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'%~[~]%' ESCAPE N'~'

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'%~[0%' ESCAPE N'~'

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @asParamUnterm NVarChar(4000) -- String
SET     @asParamUnterm = N'%~[0%'

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE @asParamUnterm ESCAPE N'~'

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'%~[0-9~]%' ESCAPE N'~'

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'%6%' ESCAPE N'~'

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'[0'

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @asParamUnterm NVarChar(4000) -- String
SET     @asParamUnterm = N'[0'

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE @asParamUnterm

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'[0-9]'

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @asParam NVarChar(4000) -- String
SET     @asParam = N'[0-9]'

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE @asParam

