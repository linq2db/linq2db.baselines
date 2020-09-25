BeforeExecute
-- SqlServer.2012

SELECT
	[t].[geographyDataType].STSrid,
	[t].[geographyDataType].Lat,
	[t].[geographyDataType].Long,
	[t].[geographyDataType].Z,
	[t].[geographyDataType].M,
	Geography::GeomFromGml([t].[geographyDataType].AsGml(), 4326),
	[t].[geographyDataType].AsGml(),
	[t].[geographyDataType],
	Geography::Parse('LINESTRING(-122.360 47.656, -122.343 47.656)'),
	Geography::Point(1, 1, 4326),
	Geography::STGeomFromText('LINESTRING(-122.360 47.656, -122.343 47.656)', 4326)
FROM
	[AllTypes2] [t]

