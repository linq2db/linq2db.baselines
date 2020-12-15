BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [SampleClass]
(
	[Id]    Int            NOT NULL,
	[Value] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	N'6'
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[SampleClass] [t1]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'%[[]0%'

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @asParamUnterm NVarChar(4000) -- String
SET     @asParamUnterm = N'%[[]0%'

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE @asParamUnterm ESCAPE N'~'

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'%[0-9]%'

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'[0'

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
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
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'[0-9]'

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
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
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE [SampleClass]

