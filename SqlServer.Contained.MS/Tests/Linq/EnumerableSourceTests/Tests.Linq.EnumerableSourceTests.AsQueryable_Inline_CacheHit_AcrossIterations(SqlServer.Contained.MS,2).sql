-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	(VALUES
		(20,N'Data 20'), (21,N'Data 21'), (22,N'Data 22')
	) [t1]([Id], [Data])

