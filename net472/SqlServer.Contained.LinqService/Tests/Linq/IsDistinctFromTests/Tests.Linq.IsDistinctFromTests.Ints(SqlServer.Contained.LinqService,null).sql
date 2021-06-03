﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Int]            Int            NOT NULL,
		[NullableInt]    Int                NULL,
		[String]         NVarChar(4000)     NULL,
		[NullableString] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2017
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
-- SqlServer.Contained SqlServer.2017
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
-- SqlServer.Contained SqlServer.2017

SELECT
	Count(*)
FROM
	[Src] [s]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NOT NULL

BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	1 = 0

BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NULL

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [Src]

