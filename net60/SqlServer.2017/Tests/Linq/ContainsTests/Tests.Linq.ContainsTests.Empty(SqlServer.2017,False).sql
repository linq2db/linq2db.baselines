BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Id]  Int NOT NULL,
		[Int] Int     NULL
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [Src]
(
	[Id],
	[Int]
)
VALUES
(1,NULL),
(2,2)

BeforeExecute
-- SqlServer.2017

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	1 = 0

BeforeExecute
-- SqlServer.2017

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	1 = 1

BeforeExecute
-- SqlServer.2017

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	1 = 1

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Src]

