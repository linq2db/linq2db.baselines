﻿BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Int]            Int            NOT NULL,
		[NullableInt]    Int                NULL,
		[String]         NVarChar(4000)     NULL,
		[NullableString] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'xyz'

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[String] = @value_1 OR [s].[String] IS NULL AND @value_1 IS NULL THEN 1 ELSE 0 END = 0

BeforeExecute
-- SqlServer.2012
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'xyz'

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[NullableString] = @value_1 OR [s].[NullableString] IS NULL AND @value_1 IS NULL THEN 1 ELSE 0 END = 0

BeforeExecute
-- SqlServer.2012
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'xyz'

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[String] = @value_1 OR [s].[String] IS NULL AND @value_1 IS NULL THEN 1 ELSE 0 END = 1

BeforeExecute
-- SqlServer.2012
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'xyz'

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[NullableString] = @value_1 OR [s].[NullableString] IS NULL AND @value_1 IS NULL THEN 1 ELSE 0 END = 1

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

