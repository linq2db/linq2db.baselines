﻿BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT EXISTS(
		SELECT
			[s].[Int]
		INTERSECT
		SELECT
			@value
	)

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT EXISTS(
		SELECT
			[s].[NullableInt]
		INTERSECT
		SELECT
			@value
	)

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	EXISTS(
		SELECT
			[s].[Int]
		INTERSECT
		SELECT
			@value
	)

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	EXISTS(
		SELECT
			[s].[NullableInt]
		INTERSECT
		SELECT
			@value
	)

