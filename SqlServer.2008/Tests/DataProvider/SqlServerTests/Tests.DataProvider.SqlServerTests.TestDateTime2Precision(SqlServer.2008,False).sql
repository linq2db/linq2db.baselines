-- SqlServer.2008
DECLARE @dt2 DateTime2
SET     @dt2 = CAST('2012-12-12T12:12:12.1231234' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DTD] = @dt2

-- SqlServer.2008
DECLARE @dt2 DateTime2
SET     @dt2 = CAST('2012-12-12T12:12:12.0000000' AS DATETIME2)

SELECT
	COUNT(*)
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT0] = @dt2

-- SqlServer.2008
DECLARE @dt2 DateTime2
SET     @dt2 = CAST('2012-12-12T12:12:12.1000000' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT1] = @dt2

-- SqlServer.2008
DECLARE @dt2 DateTime2
SET     @dt2 = CAST('2012-12-12T12:12:12.1200000' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT2] = @dt2

-- SqlServer.2008
DECLARE @dt2 DateTime2
SET     @dt2 = CAST('2012-12-12T12:12:12.1230000' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT3] = @dt2

-- SqlServer.2008
DECLARE @dt2 DateTime2
SET     @dt2 = CAST('2012-12-12T12:12:12.1231000' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT4] = @dt2

-- SqlServer.2008
DECLARE @dt2 DateTime2
SET     @dt2 = CAST('2012-12-12T12:12:12.1231200' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT5] = @dt2

-- SqlServer.2008
DECLARE @dt2 DateTime2
SET     @dt2 = CAST('2012-12-12T12:12:12.1231230' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT6] = @dt2

-- SqlServer.2008
DECLARE @dt2 DateTime2
SET     @dt2 = CAST('2012-12-12T12:12:12.1231234' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT7] = @dt2

-- SqlServer.2008
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = CAST('2012-12-12T12:12:12.0001234' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DTD] = @dt2NoMs

-- SqlServer.2008
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = CAST('2012-12-12T12:12:12.0000000' AS DATETIME2)

SELECT
	COUNT(*)
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT0] = @dt2NoMs

-- SqlServer.2008
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = CAST('2012-12-12T12:12:12.0000000' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT1] = @dt2NoMs

-- SqlServer.2008
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = CAST('2012-12-12T12:12:12.0000000' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT2] = @dt2NoMs

-- SqlServer.2008
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = CAST('2012-12-12T12:12:12.0000000' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT3] = @dt2NoMs

-- SqlServer.2008
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = CAST('2012-12-12T12:12:12.0001000' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT4] = @dt2NoMs

-- SqlServer.2008
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = CAST('2012-12-12T12:12:12.0001200' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT5] = @dt2NoMs

-- SqlServer.2008
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = CAST('2012-12-12T12:12:12.0001230' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT6] = @dt2NoMs

-- SqlServer.2008
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = CAST('2012-12-12T12:12:12.0001234' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT7] = @dt2NoMs

