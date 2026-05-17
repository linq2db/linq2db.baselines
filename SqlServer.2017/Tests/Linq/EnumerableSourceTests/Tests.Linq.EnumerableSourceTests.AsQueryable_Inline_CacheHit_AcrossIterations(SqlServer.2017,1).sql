-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	(VALUES
		(10,N'Data 10'), (11,N'Data 11')
	) [t1]([Id], [Data])

