-- SqlServer.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[t1].[Id],
	[t1].[Value],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchItem] [t1]
ORDER BY
	[t1].[Id]
;
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [t1]
	)

-- SqlServer.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 4

SELECT TOP (@take)
	[t1].[Id],
	[t1].[Value],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchItem] [t1]
ORDER BY
	[t1].[Id]
;
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [t1]
	)

