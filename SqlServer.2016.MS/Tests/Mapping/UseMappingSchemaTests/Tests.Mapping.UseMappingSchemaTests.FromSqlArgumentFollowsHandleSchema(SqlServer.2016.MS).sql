-- SqlServer.2016.MS SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = 101

SELECT
	[r].[Id]
FROM
	(
		SELECT Id, Kind FROM SourceSchemaShape WHERE Kind = @p
	) [r]

