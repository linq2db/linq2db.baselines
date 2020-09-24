﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p1 NVarChar(2) -- String
SET     @p1 = '10'
DECLARE @p2 NVarChar(2) -- String
SET     @p2 = '01'
DECLARE @p3 NVarChar(2) -- String
SET     @p3 = '20'
DECLARE @p4 NVarChar(2) -- String
SET     @p4 = '35'
DECLARE @p5 NVarChar(2) -- String
SET     @p5 = '44'

SELECT
	[t].[c1]
FROM
	(
		SELECT
			DateTime(Cast(Cast(StrFTime('%Y', [p].[DateTimeValue]) as int) as VarChar(11)) || '-' || @p1 || '-' || @p2 || ' ' || @p3 || ':' || @p4 || ':' || @p5) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	Cast(StrFTime('%m', [t].[c1]) as int) = 10

