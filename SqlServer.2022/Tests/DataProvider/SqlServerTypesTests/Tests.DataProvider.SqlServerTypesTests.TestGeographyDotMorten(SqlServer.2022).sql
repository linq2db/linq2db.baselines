BeforeExecute
-- SqlServer.2022

SELECT
	[t].[geographyDataType].STSrid,
	[t].[geographyDataType].Lat,
	[t].[geographyDataType].Long,
	[t].[geographyDataType].Z,
	[t].[geographyDataType].M,
	[t].[geographyDataType],
	geography::Parse('LINESTRING(-122.360 47.656, -122.343 47.656)'),
	geography::Point(1, 1, 4326),
	geography::STGeomFromText('LINESTRING(-122.360 47.656, -122.343 47.656)', 4326)
FROM
	[AllTypes2] [t]

