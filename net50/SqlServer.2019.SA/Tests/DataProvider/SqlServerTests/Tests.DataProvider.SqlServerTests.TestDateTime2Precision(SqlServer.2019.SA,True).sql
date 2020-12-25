BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

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
-- SqlServer.2019.SA SqlServer.2017

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
-- SqlServer.2019.SA SqlServer.2017

SELECT TOP (2)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DTD] = '2012-12-12T12:12:12.1231234'

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	Count(*)
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT0] = '2012-12-12T12:12:12'

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT TOP (2)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT1] = '2012-12-12T12:12:12.1'

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT TOP (2)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT2] = '2012-12-12T12:12:12.12'

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT TOP (2)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT3] = '2012-12-12T12:12:12.123'

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT TOP (2)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT4] = '2012-12-12T12:12:12.1231'

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT TOP (2)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT5] = '2012-12-12T12:12:12.12312'

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT TOP (2)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT6] = '2012-12-12T12:12:12.123123'

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT TOP (2)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT7] = '2012-12-12T12:12:12.1231234'

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT TOP (2)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DTD] = '2012-12-12T12:12:12.0001234'

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	Count(*)
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT0] = '2012-12-12T12:12:12'

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT TOP (2)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT1] = '2012-12-12T12:12:12.0'

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT TOP (2)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT2] = '2012-12-12T12:12:12.00'

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT TOP (2)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT3] = '2012-12-12T12:12:12.000'

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT TOP (2)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT4] = '2012-12-12T12:12:12.0001'

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT TOP (2)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT5] = '2012-12-12T12:12:12.00012'

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT TOP (2)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT6] = '2012-12-12T12:12:12.000123'

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT TOP (2)
	[_].[Id]
FROM
	[DateTime2Table] [_]
WHERE
	[_].[DT7] = '2012-12-12T12:12:12.0001234'

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE [DateTime2Table]

