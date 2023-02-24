﻿BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Int]            Int            NOT NULL,
		[NullableInt]    Int                NULL,
		[String]         NVarChar(4000)     NULL,
		[NullableString] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2022

INSERT INTO [Src]
(
	[Int],
	[NullableInt],
	[String],
	[NullableString]
)
VALUES
(2,2,N'abc',N'abc'),
(3,NULL,N'def',NULL)

BeforeExecute
-- SqlServer.2022
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'xyz'

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS DISTINCT FROM @value_1

BeforeExecute
-- SqlServer.2022
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'xyz'

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS DISTINCT FROM @value_1

BeforeExecute
-- SqlServer.2022
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'xyz'

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS NOT DISTINCT FROM @value_1

BeforeExecute
-- SqlServer.2022
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'xyz'

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NOT DISTINCT FROM @value_1

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Src]

