﻿BeforeExecute
-- SQLite.MS SQLite
DECLARE @param  -- Int32
SET     @param = 1

select * from RawDynamicData where AId >= @param

