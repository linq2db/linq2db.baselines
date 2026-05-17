-- SqlServer.2016

SELECT Cast(geography::STGeomFromText('LINESTRING(-122.360 47.656, -122.343 47.656)', 4326) as geography)

-- SqlServer.2016

SELECT Cast(NULL as geography)

-- SqlServer.2016
DECLARE @p geography -- Udt -- Object
SET     @p = LINESTRING (-122.36 47.656, -122.343 47.656)

SELECT @p

-- SqlServer.2016
DECLARE @p geography -- Udt -- Object
SET     @p = LINESTRING (-122.36 47.656, -122.343 47.656)

SELECT @p

-- SqlServer.2016
DECLARE @p geography -- Udt -- Object
SET     @p = LINESTRING (-122.36 47.656, -122.343 47.656)

SELECT @p

