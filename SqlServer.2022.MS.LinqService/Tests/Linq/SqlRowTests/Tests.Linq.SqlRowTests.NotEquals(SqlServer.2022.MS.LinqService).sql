﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Ints]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

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
-- SqlServer.2022.MS SqlServer.2022
DECLARE @One Int -- Int32
SET     @One = 1
DECLARE @Two Int -- Int32
SET     @Two = 2
DECLARE @Three Int -- Int32
SET     @Three = 3
DECLARE @Four Int -- Int32
SET     @Four = 4
DECLARE @Five Int -- Int32
SET     @Five = 5
DECLARE @Nil Int -- Int32
SET     @Nil = NULL

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
(
	@One,
	@Two,
	@Three,
	@Four,
	@Five,
	@Nil
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] <> [i].[One] OR [i].[Two] <> [i].[One] * 2 OR [i].[Three] <> [i].[Four] - 1)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] <> [i].[One] OR [i].[Two] <> [i].[Two] OR [i].[Four] <> [i].[Three])

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] <> [i].[One] OR [i].[Nil] <> [i].[Two] OR [i].[Three] <> [i].[Three])

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	(1 <> [i].[One] OR [i].[Nil] <> [i].[Nil] OR 4 <> [i].[Three])

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	(1 <> [i].[One] OR NULL >= [i].[Nil] OR 4 <> [i].[Three])

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Ints]

