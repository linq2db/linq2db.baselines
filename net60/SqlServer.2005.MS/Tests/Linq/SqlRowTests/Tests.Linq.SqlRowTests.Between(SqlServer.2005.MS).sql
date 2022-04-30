﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Ints]', N'U') IS NOT NULL)
	DROP TABLE [Ints]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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
-- SqlServer.2005.MS SqlServer.2005

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
-- SqlServer.2005.MS SqlServer.2005

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] > [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] >= [i].[One] * 2) AND
	([i].[One] < [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] <= [i].[One] + [i].[One])

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] > [i].[One] OR [i].[One] = [i].[One] AND [i].[Three] >= [i].[One]) AND
	([i].[One] < [i].[One] OR [i].[One] = [i].[One] AND [i].[Three] <= [i].[Four])

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] > [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] >= [i].[Three]) AND
	([i].[One] < [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] <= [i].[Two])

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two] > [i].[One] OR [i].[Two] = [i].[One] AND [i].[Five] >= [i].[One]) AND
	([i].[Two] < [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Five] <= [i].[Two])

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two] > [i].[One] OR [i].[Two] = [i].[One] AND [i].[Five] >= [i].[One]) AND
	([i].[Two] < [i].[Two] OR [i].[Two] = [i].[Two] AND [i].[Five] <= [i].[Two])

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two] > [i].[One] OR [i].[Two] = [i].[One] AND [i].[Nil] >= [i].[One]) AND
	([i].[Two] < [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Nil] <= [i].[One])

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two] > [i].[Two] OR [i].[Two] = [i].[Two] AND [i].[Nil] >= [i].[One]) AND
	([i].[Two] < [i].[Two] OR [i].[Two] = [i].[Two] AND [i].[Nil] <= [i].[Three])

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two] > [i].[One] OR [i].[Two] = [i].[One] AND [i].[Five] >= [i].[Nil]) AND
	([i].[Two] < [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Five] <= [i].[Nil])

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two] > [i].[One] OR [i].[Two] = [i].[One] AND [i].[Nil] >= [i].[Nil]) AND
	([i].[Two] < [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Nil] <= [i].[Nil])

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two] > [i].[Nil] OR [i].[Two] = [i].[Nil] AND [i].[Two] >= [i].[One]) AND
	([i].[Two] < [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Two] <= [i].[Five])

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Ints]', N'U') IS NOT NULL)
	DROP TABLE [Ints]

