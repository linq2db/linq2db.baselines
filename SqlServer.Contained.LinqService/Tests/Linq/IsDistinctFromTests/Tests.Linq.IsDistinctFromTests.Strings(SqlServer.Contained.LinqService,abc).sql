BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
DECLARE @value NVarChar(4000) -- String
SET     @value = N'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT EXISTS(
		SELECT
			[s].[String]
		INTERSECT
		SELECT
			@value
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
DECLARE @value NVarChar(4000) -- String
SET     @value = N'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT EXISTS(
		SELECT
			[s].[NullableString]
		INTERSECT
		SELECT
			@value
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
DECLARE @value NVarChar(4000) -- String
SET     @value = N'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	EXISTS(
		SELECT
			[s].[String]
		INTERSECT
		SELECT
			@value
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
DECLARE @value NVarChar(4000) -- String
SET     @value = N'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	EXISTS(
		SELECT
			[s].[NullableString]
		INTERSECT
		SELECT
			@value
	)

