﻿BeforeExecute
-- SQLite.Classic SQLite
DECLARE @param  -- Int32
SET     @param = 10

select * from RawDynamicData where AId >= @param

