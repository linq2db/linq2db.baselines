-- SqlServer.2022.MS SqlServer.2022
DECLARE @key Int -- Int32
SET     @key = 7

SELECT
	[t].[Id],
	ROW_NUMBER() OVER (ORDER BY (
		SELECT
			@key
	))
FROM
	[WindowFunctionTestEntity] [t]

