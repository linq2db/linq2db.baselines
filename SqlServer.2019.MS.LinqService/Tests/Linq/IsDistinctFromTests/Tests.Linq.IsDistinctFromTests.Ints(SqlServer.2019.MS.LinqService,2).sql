BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)
DECLARE @value Int -- Int32
SET     @value = 2

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
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)
DECLARE @value Int -- Int32
SET     @value = 2

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
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)
DECLARE @value Int -- Int32
SET     @value = 2

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
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)
DECLARE @value Int -- Int32
SET     @value = 2

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

