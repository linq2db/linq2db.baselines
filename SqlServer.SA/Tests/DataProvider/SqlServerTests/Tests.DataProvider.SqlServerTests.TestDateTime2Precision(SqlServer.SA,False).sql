-- SqlServer.SA SqlServer.2019
DECLARE @dt2 DateTime2
SET     @dt2 = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1231234, 7)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DTD] = @dt2

-- SqlServer.SA SqlServer.2019
DECLARE @dt2 DateTime2
SET     @dt2 = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 0, 7)

SELECT
	COUNT(*)
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT0] = @dt2

-- SqlServer.SA SqlServer.2019
DECLARE @dt2 DateTime2
SET     @dt2 = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1000000, 7)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT1] = @dt2

-- SqlServer.SA SqlServer.2019
DECLARE @dt2 DateTime2
SET     @dt2 = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1200000, 7)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT2] = @dt2

-- SqlServer.SA SqlServer.2019
DECLARE @dt2 DateTime2
SET     @dt2 = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1230000, 7)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT3] = @dt2

-- SqlServer.SA SqlServer.2019
DECLARE @dt2 DateTime2
SET     @dt2 = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1231000, 7)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT4] = @dt2

-- SqlServer.SA SqlServer.2019
DECLARE @dt2 DateTime2
SET     @dt2 = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1231200, 7)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT5] = @dt2

-- SqlServer.SA SqlServer.2019
DECLARE @dt2 DateTime2
SET     @dt2 = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1231230, 7)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT6] = @dt2

-- SqlServer.SA SqlServer.2019
DECLARE @dt2 DateTime2
SET     @dt2 = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1231234, 7)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT7] = @dt2

-- SqlServer.SA SqlServer.2019
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1234, 7)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DTD] = @dt2NoMs

-- SqlServer.SA SqlServer.2019
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 0, 7)

SELECT
	COUNT(*)
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT0] = @dt2NoMs

-- SqlServer.SA SqlServer.2019
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 0, 7)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT1] = @dt2NoMs

-- SqlServer.SA SqlServer.2019
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 0, 7)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT2] = @dt2NoMs

-- SqlServer.SA SqlServer.2019
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 0, 7)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT3] = @dt2NoMs

-- SqlServer.SA SqlServer.2019
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1000, 7)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT4] = @dt2NoMs

-- SqlServer.SA SqlServer.2019
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1200, 7)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT5] = @dt2NoMs

-- SqlServer.SA SqlServer.2019
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1230, 7)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT6] = @dt2NoMs

-- SqlServer.SA SqlServer.2019
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1234, 7)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT7] = @dt2NoMs

