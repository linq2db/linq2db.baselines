BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [DateTime2Table]

BeforeExecute
-- SqlServer.2019

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
-- SqlServer.2019

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
(1,DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1231234, 7),DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 0, 0),DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1, 1),DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 12, 2),DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 123, 3),DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1231, 4),DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 12312, 5),DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 123123, 6),DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1231234, 7)),
(2,DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1234, 7),DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 0, 0),DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 0, 1),DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 0, 2),DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 0, 3),DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1, 4),DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 12, 5),DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 123, 6),DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1234, 7))

BeforeExecute
-- SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2 DateTime2
SET     @dt2 = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1231234, 7)

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DTD] = @dt2

BeforeExecute
-- SqlServer.2019
DECLARE @dt2 DateTime2
SET     @dt2 = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 0, 7)

SELECT
	Count(*)
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT0] = @dt2

BeforeExecute
-- SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2 DateTime2
SET     @dt2 = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1000000, 7)

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT1] = @dt2

BeforeExecute
-- SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2 DateTime2
SET     @dt2 = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1200000, 7)

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT2] = @dt2

BeforeExecute
-- SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2 DateTime2
SET     @dt2 = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1230000, 7)

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT3] = @dt2

BeforeExecute
-- SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2 DateTime2
SET     @dt2 = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1231000, 7)

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT4] = @dt2

BeforeExecute
-- SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2 DateTime2
SET     @dt2 = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1231200, 7)

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT5] = @dt2

BeforeExecute
-- SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2 DateTime2
SET     @dt2 = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1231230, 7)

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT6] = @dt2

BeforeExecute
-- SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2 DateTime2
SET     @dt2 = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1231234, 7)

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT7] = @dt2

BeforeExecute
-- SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1234, 7)

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DTD] = @dt2NoMs

BeforeExecute
-- SqlServer.2019
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 0, 7)

SELECT
	Count(*)
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT0] = @dt2NoMs

BeforeExecute
-- SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 0, 7)

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT1] = @dt2NoMs

BeforeExecute
-- SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 0, 7)

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT2] = @dt2NoMs

BeforeExecute
-- SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 0, 7)

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT3] = @dt2NoMs

BeforeExecute
-- SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1000, 7)

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT4] = @dt2NoMs

BeforeExecute
-- SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1200, 7)

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT5] = @dt2NoMs

BeforeExecute
-- SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1230, 7)

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT6] = @dt2NoMs

BeforeExecute
-- SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 1234, 7)

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT7] = @dt2NoMs

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [DateTime2Table]

