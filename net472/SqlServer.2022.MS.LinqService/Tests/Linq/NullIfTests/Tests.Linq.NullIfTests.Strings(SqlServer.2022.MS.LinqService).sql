﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Int]            Int            NOT NULL,
		[NullableInt]    Int                NULL,
		[String]         NVarChar(4000)     NULL,
		[NullableString] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Int_1 Int -- Int32
SET     @Int_1 = 2
DECLARE @NullableInt Int -- Int32
SET     @NullableInt = 2
DECLARE @String NVarChar(4000) -- String
SET     @String = N'abc'
DECLARE @NullableString NVarChar(4000) -- String
SET     @NullableString = N'abc'

INSERT INTO [Src]
(
	[Int],
	[NullableInt],
	[String],
	[NullableString]
)
VALUES
(
	@Int_1,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Int_1 Int -- Int32
SET     @Int_1 = 3
DECLARE @NullableInt Int -- Int32
SET     @NullableInt = NULL
DECLARE @String NVarChar(4000) -- String
SET     @String = N'def'
DECLARE @NullableString NVarChar(4000) -- String
SET     @NullableString = NULL

INSERT INTO [Src]
(
	[Int],
	[NullableInt],
	[String],
	[NullableString]
)
VALUES
(
	@Int_1,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	NULLIF([s].[String], N'abc')
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	NULLIF([s].[String], N'xyz')
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	NULLIF([s].[String], NULL)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	NULLIF([s].[NullableString], N'abc')
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	NULLIF([s].[NullableString], N'xyz')
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	NULLIF([s].[NullableString], NULL)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Src]

