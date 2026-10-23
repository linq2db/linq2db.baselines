-- SqlServer.2019.MS SqlServer.2019
DECLARE @value NVarChar(4000) -- String
SET     @value = N'xyz'

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

-- SqlServer.2019.MS SqlServer.2019
DECLARE @value NVarChar(4000) -- String
SET     @value = N'xyz'

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

-- SqlServer.2019.MS SqlServer.2019
DECLARE @value NVarChar(4000) -- String
SET     @value = N'xyz'

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

-- SqlServer.2019.MS SqlServer.2019
DECLARE @value NVarChar(4000) -- String
SET     @value = N'xyz'

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

