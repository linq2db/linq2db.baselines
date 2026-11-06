-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @param Integer -- Int32
SET     @param = 1

select * from RawDynamicData where AId >= @param

