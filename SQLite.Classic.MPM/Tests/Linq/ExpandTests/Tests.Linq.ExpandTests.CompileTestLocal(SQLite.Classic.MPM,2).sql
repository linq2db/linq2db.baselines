﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @param  -- Int32
SET     @param = 2

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[SampleClass] [t],
	[SampleClass] [t2]
WHERE
	[t2].[Value] > @param

