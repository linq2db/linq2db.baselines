-- SqlServer.2012.MS SqlServer.2012

INSERT INTO [Thing]
(
	[Id],
	[ThingCounter]
)
SELECT
	1,
	Coalesce([t2].[c1], 0) + 1
FROM
	(
		SELECT DISTINCT
			[t1].[c1]
		FROM
			(
				SELECT
					MAX([lastThingInSequence].[ThingCounter]) OVER(PARTITION BY [lastThingInSequence].[ThingSequence]) as [c1]
				FROM
					(
						SELECT
							N'test' as [c1]
					) [thingSequence]
						LEFT JOIN [Thing] [lastThingInSequence] ON [lastThingInSequence].[ThingSequence] = [thingSequence].[c1]
			) [t1]
	) [t2]

