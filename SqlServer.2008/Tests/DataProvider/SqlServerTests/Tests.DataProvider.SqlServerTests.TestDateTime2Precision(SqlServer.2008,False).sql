BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[DateTime2Table]', N'U') IS NOT NULL)
	DROP TABLE [DateTime2Table]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[DateTime2Table]', N'U') IS NULL)
	CREATE TABLE [DateTime2Table]
	(
		[Id]  Int          NOT NULL,
		[DTD] DateTime2    NOT NULL,
		[DT0] DateTime2(0) NOT NULL,
		[DT1] DateTime2(1) NOT NULL,
		[DT2] DateTime2(2) NOT NULL,
		[DT3] DateTime2(3) NOT NULL,
		[DT4] DateTime2(4) NOT NULL,
		[DT5] DateTime2(5) NOT NULL,
		[DT6] DateTime2(6) NOT NULL,
		[DT7] DateTime2    NOT NULL
	)

BeforeExecute
-- SqlServer.2008

INSERT INTO [DateTime2Table]
(
	[Id],
	[DTD],
	[DT0],
	[DT1],
	[DT2],
	[DT3],
	[DT4],
	[DT5],
	[DT6],
	[DT7]
)
VALUES
(1,CAST('2012-12-12T12:12:12.1231234' AS DATETIME2),CAST('2012-12-12T12:12:12' AS DATETIME2(0)),CAST('2012-12-12T12:12:12.1' AS DATETIME2(1)),CAST('2012-12-12T12:12:12.12' AS DATETIME2(2)),CAST('2012-12-12T12:12:12.123' AS DATETIME2(3)),CAST('2012-12-12T12:12:12.1231' AS DATETIME2(4)),CAST('2012-12-12T12:12:12.12312' AS DATETIME2(5)),CAST('2012-12-12T12:12:12.123123' AS DATETIME2(6)),CAST('2012-12-12T12:12:12.1231234' AS DATETIME2)),
(2,CAST('2012-12-12T12:12:12.0001234' AS DATETIME2),CAST('2012-12-12T12:12:12' AS DATETIME2(0)),CAST('2012-12-12T12:12:12.0' AS DATETIME2(1)),CAST('2012-12-12T12:12:12.00' AS DATETIME2(2)),CAST('2012-12-12T12:12:12.000' AS DATETIME2(3)),CAST('2012-12-12T12:12:12.0001' AS DATETIME2(4)),CAST('2012-12-12T12:12:12.00012' AS DATETIME2(5)),CAST('2012-12-12T12:12:12.000123' AS DATETIME2(6)),CAST('2012-12-12T12:12:12.0001234' AS DATETIME2))

BeforeExecute
-- SqlServer.2008
DECLARE @dt2 DateTime2
SET     @dt2 = CAST('2012-12-12T12:12:12.1231234' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DTD] = @dt2

BeforeExecute
-- SqlServer.2008
DECLARE @dt2 DateTime2
SET     @dt2 = CAST('2012-12-12T12:12:12.0000000' AS DATETIME2)

SELECT
	COUNT(*)
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT0] = @dt2

BeforeExecute
-- SqlServer.2008
DECLARE @dt2 DateTime2
SET     @dt2 = CAST('2012-12-12T12:12:12.1000000' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT1] = @dt2

BeforeExecute
-- SqlServer.2008
DECLARE @dt2 DateTime2
SET     @dt2 = CAST('2012-12-12T12:12:12.1200000' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT2] = @dt2

BeforeExecute
-- SqlServer.2008
DECLARE @dt2 DateTime2
SET     @dt2 = CAST('2012-12-12T12:12:12.1230000' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT3] = @dt2

BeforeExecute
-- SqlServer.2008
DECLARE @dt2 DateTime2
SET     @dt2 = CAST('2012-12-12T12:12:12.1231000' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT4] = @dt2

BeforeExecute
-- SqlServer.2008
DECLARE @dt2 DateTime2
SET     @dt2 = CAST('2012-12-12T12:12:12.1231200' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT5] = @dt2

BeforeExecute
-- SqlServer.2008
DECLARE @dt2 DateTime2
SET     @dt2 = CAST('2012-12-12T12:12:12.1231230' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT6] = @dt2

BeforeExecute
-- SqlServer.2008
DECLARE @dt2 DateTime2
SET     @dt2 = CAST('2012-12-12T12:12:12.1231234' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT7] = @dt2

BeforeExecute
-- SqlServer.2008
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = CAST('2012-12-12T12:12:12.0001234' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DTD] = @dt2NoMs

BeforeExecute
-- SqlServer.2008
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = CAST('2012-12-12T12:12:12.0000000' AS DATETIME2)

SELECT
	COUNT(*)
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT0] = @dt2NoMs

BeforeExecute
-- SqlServer.2008
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = CAST('2012-12-12T12:12:12.0000000' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT1] = @dt2NoMs

BeforeExecute
-- SqlServer.2008
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = CAST('2012-12-12T12:12:12.0000000' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT2] = @dt2NoMs

BeforeExecute
-- SqlServer.2008
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = CAST('2012-12-12T12:12:12.0000000' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT3] = @dt2NoMs

BeforeExecute
-- SqlServer.2008
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = CAST('2012-12-12T12:12:12.0001000' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT4] = @dt2NoMs

BeforeExecute
-- SqlServer.2008
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = CAST('2012-12-12T12:12:12.0001200' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT5] = @dt2NoMs

BeforeExecute
-- SqlServer.2008
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = CAST('2012-12-12T12:12:12.0001230' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT6] = @dt2NoMs

BeforeExecute
-- SqlServer.2008
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = CAST('2012-12-12T12:12:12.0001234' AS DATETIME2)

SELECT TOP (2)
	[t1].[Id]
FROM
	[DateTime2Table] [t1]
WHERE
	[t1].[DT7] = @dt2NoMs

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[DateTime2Table]', N'U') IS NOT NULL)
	DROP TABLE [DateTime2Table]

