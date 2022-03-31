﻿BeforeExecute
-- SQLite.MS SQLite
DECLARE @p_1 NVarChar(2) -- String
SET     @p_1 = '01'
DECLARE @p_2 NVarChar(2) -- String
SET     @p_2 = '20'
DECLARE @p_3 NVarChar(2) -- String
SET     @p_3 = '35'
DECLARE @p_4 NVarChar(2) -- String
SET     @p_4 = '44'

SELECT
	[t].[c1]
FROM
	(
		SELECT
			DateTime('2010-' || CASE
				WHEN Length(Cast([p].[ID] as NVarChar(11))) = 1
					THEN '0' || Cast([p].[ID] as NVarChar(11))
				ELSE Cast([p].[ID] as NVarChar(11))
			END || '-' || @p_1 || ' ' || @p_2 || ':' || @p_3 || ':' || @p_4) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	Cast(StrFTime('%Y', [t].[c1]) as int) = 2010

