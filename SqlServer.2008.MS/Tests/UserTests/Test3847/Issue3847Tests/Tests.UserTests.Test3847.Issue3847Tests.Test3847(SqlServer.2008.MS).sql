-- SqlServer.2008.MS SqlServer.2008

SELECT
	[outfeed].[Id],
	(
		SELECT TOP (1)
			[t1].[Value]
		FROM
			(VALUES
				('bc7b663d-0fde-4327-8f92-5d8cc3a11d11',CAST('2020-02-29T17:54:55.1231234' AS DATETIME2)),
				('a948600d-de21-4f74-8ac2-9516b287076e',CAST('2020-02-29T17:54:55.1231234' AS DATETIME2)),
				('bd3973a5-4323-4dd8-9f4f-df9f93e2a627',CAST('2020-02-29T17:54:55.1231234' AS DATETIME2))
			) [t1]([Key], [Value])
		WHERE
			[t1].[Key] = [outfeed].[Id]
	),
	(
		SELECT TOP (1)
			[t2].[Value]
		FROM
			(VALUES
				('76b1c875-2287-4b82-a23b-7967c5eafed8',CAST('2020-02-29T17:54:55.1231234' AS DATETIME2)),
				('656606a4-6e36-4431-add6-85f886a1c7c2',CAST('2020-02-29T17:54:55.1231234' AS DATETIME2))
			) [t2]([Key], [Value])
		WHERE
			[t2].[Key] = [outfeed].[Id]
	)
FROM
	[Test3847_OutfeedTransportOrder] [outfeed]

