﻿BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Ints]', N'U') IS NOT NULL)
	DROP TABLE [Ints]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Ints]', N'U') IS NULL)
	CREATE TABLE [Ints]
	(
		[One]   Int NOT NULL,
		[Two]   Int NOT NULL,
		[Three] Int NOT NULL,
		[Four]  Int NOT NULL,
		[Five]  Int NOT NULL,
		[Nil]   Int     NULL
	)

BeforeExecute
-- SqlServer.2014

INSERT INTO [Ints]
(
	[One],
	[Two],
	[Three],
	[Four],
	[Five],
	[Nil]
)
VALUES
(1,2,3,4,5,NULL)

BeforeExecute
-- SqlServer.2014

SELECT
	COUNT(*)
FROM
	[Ints] [i]

BeforeExecute
-- SqlServer.2014

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	1 = 0

BeforeExecute
-- SqlServer.2014

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	1 = 0

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Ints]', N'U') IS NOT NULL)
	DROP TABLE [Ints]

