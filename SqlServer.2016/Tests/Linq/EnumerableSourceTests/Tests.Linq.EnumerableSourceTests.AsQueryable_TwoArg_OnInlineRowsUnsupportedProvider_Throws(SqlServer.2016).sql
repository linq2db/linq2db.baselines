-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	(VALUES
		(0,N'Data 0'), (1,N'Data 1'), (2,N'Data 2')
	) [t1]([Id], [Data])

