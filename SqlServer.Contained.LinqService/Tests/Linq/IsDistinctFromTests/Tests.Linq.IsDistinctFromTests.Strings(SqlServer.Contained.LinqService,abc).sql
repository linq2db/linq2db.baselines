BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Int]            Int            NOT NULL,
		[NullableInt]    Int                NULL,
		[String]         NVarChar(4000)     NULL,
		[NullableString] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Int Int -- Int32
SET     @Int = 2
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
	@Int,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Int Int -- Int32
SET     @Int = 3
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
	@Int,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @value NVarChar(4000) -- String
SET     @value = N'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS NULL OR [s].[String] <> @value

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @value NVarChar(4000) -- String
SET     @value = N'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NULL OR [s].[NullableString] <> @value

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @value NVarChar(4000) -- String
SET     @value = N'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[String] IS NULL OR [s].[String] <> @value)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @value NVarChar(4000) -- String
SET     @value = N'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableString] IS NULL OR [s].[NullableString] <> @value)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Src]

