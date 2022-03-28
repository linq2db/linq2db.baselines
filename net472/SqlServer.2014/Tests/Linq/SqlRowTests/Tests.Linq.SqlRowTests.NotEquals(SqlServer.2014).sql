﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[Ints]', N'U') IS NOT NULL)
	DROP TABLE [Ints]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

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
-- SqlServer.2014 SqlServer.2012

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
-- SqlServer.2014 SqlServer.2012

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] <> [i].[One] OR [i].[Two] <> [i].[One] * 2 OR [i].[Three] <> [i].[Four] - 1)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] <> [i].[One] OR [i].[Two] <> [i].[Two] OR [i].[Four] <> [i].[Three])

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] <> [i].[One] OR [i].[Nil] <> [i].[Two] OR [i].[Three] <> [i].[Three])

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(1 <> [i].[One] OR [i].[Nil] <> [i].[Nil] OR 4 <> [i].[Three])

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(1 <> [i].[One] OR NULL >= [i].[Nil] OR 4 <> [i].[Three])

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[Ints]', N'U') IS NOT NULL)
	DROP TABLE [Ints]

