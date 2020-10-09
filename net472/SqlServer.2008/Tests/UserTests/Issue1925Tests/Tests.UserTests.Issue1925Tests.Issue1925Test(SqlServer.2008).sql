BeforeExecute
-- SqlServer.2008

CREATE TABLE [SampleClass]
(
	[Id]    Int            NOT NULL,
	[Value] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2008

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
-- SqlServer.2008

SELECT 
	[t1].[Id], 
	[t1].[Value]
FROM
	[SampleClass] [t1]

BeforeExecute
-- SqlServer.2008

SELECT 
	[r].[Id], 
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'%[[]0%'

BeforeExecute
-- SqlServer.2008
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
-- SqlServer.2008

SELECT 
	[r].[Id], 
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'%[0-9]%'

BeforeExecute
-- SqlServer.2008

SELECT 
	[r].[Id], 
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'[0'

BeforeExecute
-- SqlServer.2008
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
-- SqlServer.2008

SELECT 
	[r].[Id], 
	[r].[Value]
FROM
	[SampleClass] [r]
WHERE
	[r].[Value] LIKE N'[0-9]'

BeforeExecute
-- SqlServer.2008
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
-- SqlServer.2008

DROP TABLE [SampleClass]

