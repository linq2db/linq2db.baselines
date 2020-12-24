BeforeExecute
-- SqlServer.2008

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
(1,'2012-12-12T12:12:12.1231234','2012-12-12T12:12:12','2012-12-12T12:12:12.1','2012-12-12T12:12:12.12','2012-12-12T12:12:12.123','2012-12-12T12:12:12.1231','2012-12-12T12:12:12.12312','2012-12-12T12:12:12.123123','2012-12-12T12:12:12.1231234'),
(2,'2012-12-12T12:12:12.0001234','2012-12-12T12:12:12','2012-12-12T12:12:12.0','2012-12-12T12:12:12.00','2012-12-12T12:12:12.000','2012-12-12T12:12:12.0001','2012-12-12T12:12:12.00012','2012-12-12T12:12:12.000123','2012-12-12T12:12:12.0001234')

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2 DateTime2
SET     @dt2 = '2012-12-12T12:12:12.1231234'

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DTD] = @dt2

BeforeExecute
-- SqlServer.2008
DECLARE @dt2 DateTime2
SET     @dt2 = '2012-12-12T12:12:12.0000000'

SELECT
	Count(*)
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT0] = @dt2

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2 DateTime2
SET     @dt2 = '2012-12-12T12:12:12.1000000'

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT1] = @dt2

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2 DateTime2
SET     @dt2 = '2012-12-12T12:12:12.1200000'

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT2] = @dt2

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2 DateTime2
SET     @dt2 = '2012-12-12T12:12:12.1230000'

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT3] = @dt2

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2 DateTime2
SET     @dt2 = '2012-12-12T12:12:12.1231000'

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT4] = @dt2

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2 DateTime2
SET     @dt2 = '2012-12-12T12:12:12.1231200'

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT5] = @dt2

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2 DateTime2
SET     @dt2 = '2012-12-12T12:12:12.1231230'

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT6] = @dt2

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2 DateTime2
SET     @dt2 = '2012-12-12T12:12:12.1231234'

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT7] = @dt2

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = '2012-12-12T12:12:12.0001234'

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DTD] = @dt2NoMs

BeforeExecute
-- SqlServer.2008
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = '2012-12-12T12:12:12.0000000'

SELECT
	Count(*)
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT0] = @dt2NoMs

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = '2012-12-12T12:12:12.0000000'

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT1] = @dt2NoMs

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = '2012-12-12T12:12:12.0000000'

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT2] = @dt2NoMs

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = '2012-12-12T12:12:12.0000000'

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT3] = @dt2NoMs

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = '2012-12-12T12:12:12.0001000'

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT4] = @dt2NoMs

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = '2012-12-12T12:12:12.0001200'

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT5] = @dt2NoMs

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = '2012-12-12T12:12:12.0001230'

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT6] = @dt2NoMs

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @dt2NoMs DateTime2
SET     @dt2NoMs = '2012-12-12T12:12:12.0001234'

SELECT TOP (@take)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT7] = @dt2NoMs

BeforeExecute
-- SqlServer.2008

DROP TABLE [DateTime2Table]

