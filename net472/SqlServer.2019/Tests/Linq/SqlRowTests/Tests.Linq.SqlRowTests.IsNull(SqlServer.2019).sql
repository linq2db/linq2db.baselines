﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE IF EXISTS [Ints]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

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
-- SqlServer.2019 SqlServer.2017

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
-- SqlServer.2019 SqlServer.2017

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	[i].[One] IS NULL AND [i].[Two] IS NULL AND [i].[Three] IS NULL

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	[i].[One] IS NULL AND [i].[Nil] IS NULL

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	[i].[Nil] IS NULL

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE IF EXISTS [Ints]

