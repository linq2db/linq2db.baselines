-- SqlServer.2016

SELECT Cast(geometry::STGeomFromText('LINESTRING (100 100, 20 180, 180 180)', 0) as geometry)

-- SqlServer.2016

SELECT Cast(NULL as geometry)

-- SqlServer.2016
DECLARE @p geometry -- Udt -- Object
SET     @p = LINESTRING (100 100, 20 180, 180 180)

SELECT @p

-- SqlServer.2016
DECLARE @p geometry -- Udt -- Object
SET     @p = LINESTRING (100 100, 20 180, 180 180)

SELECT @p

-- SqlServer.2016
DECLARE @p geometry -- Udt -- Object
SET     @p = LINESTRING (100 100, 20 180, 180 180)

SELECT @p

