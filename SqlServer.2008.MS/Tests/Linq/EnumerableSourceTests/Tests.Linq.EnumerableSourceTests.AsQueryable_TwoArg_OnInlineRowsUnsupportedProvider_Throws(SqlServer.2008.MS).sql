-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	(VALUES
		(0,N'Data 0'), (1,N'Data 1'), (2,N'Data 2')
	) [t1]([Id], [Data])

