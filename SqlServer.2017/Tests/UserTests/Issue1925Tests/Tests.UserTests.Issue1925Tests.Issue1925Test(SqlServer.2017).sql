BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NULL)
	CREATE TABLE [SampleClass]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(1,N'6'),
(2,N'x[0-9]x'),
(3,N'x[0x'),
(4,N'x[]x'),
(5,N'x]'),
(6,N']x')

BeforeExecute
-- SqlServer.2017

SELECT TOP (2)
	[r].[Id]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'%~]' ESCAPE N'~'

BeforeExecute
-- SqlServer.2017

SELECT TOP (2)
	[r].[Id]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'~]%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2017

SELECT TOP (2)
	[r].[Id]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'%-%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2017

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'%~[~]%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2017

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'%~[0%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2017
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
-- SqlServer.2017

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'%~[0-9~]%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2017

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'%6%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2017

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'[0'

BeforeExecute
-- SqlServer.2017
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
-- SqlServer.2017

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'[0-9]'

BeforeExecute
-- SqlServer.2017
DECLARE @asParam NVarChar(4000) -- String
SET     @asParam = N'[0-9]'

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE @asParam

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [SampleClass]

