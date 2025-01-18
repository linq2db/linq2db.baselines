BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
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

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
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

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
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

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
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

