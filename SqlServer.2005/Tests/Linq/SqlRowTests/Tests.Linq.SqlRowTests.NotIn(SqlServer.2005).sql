﻿BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Ints]', N'U') IS NOT NULL)
	DROP TABLE [Ints]

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005

INSERT INTO [Ints]
(
	[One],
	[Two],
	[Three],
	[Four],
	[Five],
	[Nil]
)
SELECT 1,2,3,4,5,NULL

BeforeExecute
-- SqlServer.2005

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] <> 1 OR [i].[Two] <> [i].[One] * 2)

BeforeExecute
-- SqlServer.2005

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] <> [i].[One] OR [i].[Two] <> [i].[One] * 2 OR [i].[Three] <> [i].[Four] - 1) AND
	([i].[One] <> 0 OR [i].[Two] <> 7 OR [i].[Three] <> 9) AND
	([i].[One] >= NULL OR [i].[Two] <> -1 OR [i].[Three] <> [i].[Four])

BeforeExecute
-- SqlServer.2005

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] <> [i].[One] OR [i].[Three] <> [i].[One] * 2 OR [i].[Four] <> [i].[Four] - 1) AND
	([i].[One] <> 0 OR [i].[Three] <> 7 OR [i].[Four] <> 9) AND
	([i].[One] >= NULL OR [i].[Three] <> 2 OR [i].[Four] <> [i].[Four])

BeforeExecute
-- SqlServer.2005

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] <> [i].[One] OR [i].[Two] <> [i].[One] * 2 OR [i].[Four] <> [i].[Four] - 1) AND
	([i].[One] <> 0 OR [i].[Two] <> 7 OR [i].[Four] <> 9) AND
	([i].[One] >= NULL OR [i].[Two] <> 2 OR [i].[Four] <> [i].[Four])

BeforeExecute
-- SqlServer.2005

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Nil] <> [i].[One] OR [i].[Two] <> [i].[One] * 2 OR [i].[Four] <> [i].[Four] - 1) AND
	([i].[Nil] <> 0 OR [i].[Two] <> 7 OR [i].[Four] <> 9) AND
	([i].[Nil] >= NULL OR [i].[Two] <> 2 OR [i].[Four] <> [i].[Four])

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Ints]', N'U') IS NOT NULL)
	DROP TABLE [Ints]

