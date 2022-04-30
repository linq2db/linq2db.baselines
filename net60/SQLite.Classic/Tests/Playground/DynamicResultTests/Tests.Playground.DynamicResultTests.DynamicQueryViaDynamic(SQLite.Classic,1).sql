BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [RawDynamicData]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [RawDynamicData]
(
	[AId]    INTEGER NOT NULL,
	[AValue] INTEGER NOT NULL,
	[BId]    INTEGER NOT NULL,
	[BValue] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [RawDynamicData]
(
	[AId],
	[AValue],
	[BId],
	[BValue]
)
VALUES
(1,2,100,200),
(2,4,200,400),
(3,6,300,600),
(4,8,400,800),
(5,10,500,1000),
(6,12,600,1200),
(7,14,700,1400),
(8,16,800,1600),
(9,18,900,1800),
(10,20,1000,2000),
(11,22,1100,2200),
(12,24,1200,2400),
(13,26,1300,2600),
(14,28,1400,2800),
(15,30,1500,3000),
(16,32,1600,3200),
(17,34,1700,3400),
(18,36,1800,3600),
(19,38,1900,3800),
(20,40,2000,4000)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @param  -- Int32
SET     @param = 1

select * from RawDynamicData where AId >= @param

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [RawDynamicData]

