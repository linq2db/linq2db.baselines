﻿BeforeExecute
-- SqlServer.2019

DELETE [t1]
FROM
	[AllTypes2] [t1]
WHERE
	[t1].[ID] >= 3

BeforeExecute
-- SqlServer.2019

SET IDENTITY_INSERT [AllTypes2] ON

BeforeExecute
-- SqlServer.2019
DECLARE @p1 hierarchyid -- Udt -- Object
SET     @p1 = /1/3/
DECLARE @p2 geography -- Udt -- Object
SET     @p2 = LINESTRING (-122.36 47.656, -122.343 47.656)
DECLARE @p3 geometry -- Udt -- Object
SET     @p3 = LINESTRING (100 100, 20 180, 180 180)
DECLARE @p4 hierarchyid -- Udt -- Object
SET     @p4 = /1/3/
DECLARE @p5 geography -- Udt -- Object
SET     @p5 = LINESTRING (-122.36 47.656, -122.343 47.656)
DECLARE @p6 geometry -- Udt -- Object
SET     @p6 = LINESTRING (100 100, 20 180, 180 180)
DECLARE @p7 hierarchyid -- Udt -- Object
SET     @p7 = /1/3/
DECLARE @p8 geography -- Udt -- Object
SET     @p8 = LINESTRING (-122.36 47.656, -122.343 47.656)
DECLARE @p9 geometry -- Udt -- Object
SET     @p9 = LINESTRING (100 100, 20 180, 180 180)
DECLARE @p10 hierarchyid -- Udt -- Object
SET     @p10 = /1/3/
DECLARE @p11 geography -- Udt -- Object
SET     @p11 = LINESTRING (-122.36 47.656, -122.343 47.656)
DECLARE @p12 geometry -- Udt -- Object
SET     @p12 = LINESTRING (100 100, 20 180, 180 180)
DECLARE @p13 hierarchyid -- Udt -- Object
SET     @p13 = /1/3/
DECLARE @p14 geography -- Udt -- Object
SET     @p14 = LINESTRING (-122.36 47.656, -122.343 47.656)
DECLARE @p15 geometry -- Udt -- Object
SET     @p15 = LINESTRING (100 100, 20 180, 180 180)
DECLARE @p16 hierarchyid -- Udt -- Object
SET     @p16 = /1/3/
DECLARE @p17 geography -- Udt -- Object
SET     @p17 = LINESTRING (-122.36 47.656, -122.343 47.656)
DECLARE @p18 geometry -- Udt -- Object
SET     @p18 = LINESTRING (100 100, 20 180, 180 180)
DECLARE @p19 hierarchyid -- Udt -- Object
SET     @p19 = /1/3/
DECLARE @p20 geography -- Udt -- Object
SET     @p20 = LINESTRING (-122.36 47.656, -122.343 47.656)
DECLARE @p21 geometry -- Udt -- Object
SET     @p21 = LINESTRING (100 100, 20 180, 180 180)
DECLARE @p22 hierarchyid -- Udt -- Object
SET     @p22 = /1/3/
DECLARE @p23 geography -- Udt -- Object
SET     @p23 = LINESTRING (-122.36 47.656, -122.343 47.656)
DECLARE @p24 geometry -- Udt -- Object
SET     @p24 = LINESTRING (100 100, 20 180, 180 180)
DECLARE @p25 hierarchyid -- Udt -- Object
SET     @p25 = /1/3/
DECLARE @p26 geography -- Udt -- Object
SET     @p26 = LINESTRING (-122.36 47.656, -122.343 47.656)
DECLARE @p27 geometry -- Udt -- Object
SET     @p27 = LINESTRING (100 100, 20 180, 180 180)
DECLARE @p28 hierarchyid -- Udt -- Object
SET     @p28 = /1/3/
DECLARE @p29 geography -- Udt -- Object
SET     @p29 = LINESTRING (-122.36 47.656, -122.343 47.656)
DECLARE @p30 geometry -- Udt -- Object
SET     @p30 = LINESTRING (100 100, 20 180, 180 180)

INSERT INTO [AllTypes2]
(
	[ID],
	[dateDataType],
	[datetimeoffsetDataType],
	[datetime2DataType],
	[timeDataType],
	[hierarchyidDataType],
	[geographyDataType],
	[geometryDataType]
)
VALUES
(3,'2020-02-29T00:00:00','2020-02-29 17:54:55.1231234 +00:00','2020-02-29T00:00:00','00:00:00',@p1,@p2,@p3),
(4,'2020-03-01T00:00:00','2020-02-29 17:55:55.1231234 +00:00','2020-03-01T00:00:00','00:00:01',@p4,@p5,@p6),
(5,'2020-03-02T00:00:00','2020-02-29 17:56:55.1231234 +00:00','2020-03-02T00:00:00','00:00:02',@p7,@p8,@p9),
(6,'2020-03-03T00:00:00','2020-02-29 17:57:55.1231234 +00:00','2020-03-03T00:00:00','00:00:03',@p10,@p11,@p12),
(7,'2020-03-04T00:00:00','2020-02-29 17:58:55.1231234 +00:00','2020-03-04T00:00:00','00:00:04',@p13,@p14,@p15),
(8,'2020-03-05T00:00:00','2020-02-29 17:59:55.1231234 +00:00','2020-03-05T00:00:00','00:00:05',@p16,@p17,@p18),
(9,'2020-03-06T00:00:00','2020-02-29 18:00:55.1231234 +00:00','2020-03-06T00:00:00','00:00:06',@p19,@p20,@p21),
(10,'2020-03-07T00:00:00','2020-02-29 18:01:55.1231234 +00:00','2020-03-07T00:00:00','00:00:07',@p22,@p23,@p24),
(11,'2020-03-08T00:00:00','2020-02-29 18:02:55.1231234 +00:00','2020-03-08T00:00:00','00:00:08',@p25,@p26,@p27),
(12,'2020-03-09T00:00:00','2020-02-29 18:03:55.1231234 +00:00','2020-03-09T00:00:00','00:00:09',@p28,@p29,@p30)

BeforeExecute
-- SqlServer.2019

SET IDENTITY_INSERT [AllTypes2] OFF

BeforeExecute
-- SqlServer.2019

SELECT
	[p].[ID],
	[p].[dateDataType],
	[p].[datetimeoffsetDataType],
	[p].[datetime2DataType],
	[p].[timeDataType],
	[p].[hierarchyidDataType],
	[p].[geographyDataType],
	[p].[geometryDataType]
FROM
	[AllTypes2] [p]
WHERE
	[p].[ID] >= 3
ORDER BY
	[p].[ID]

