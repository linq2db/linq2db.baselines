BeforeExecute
-- SQLite.MS SQLite
DECLARE @p1 NVarChar(2) -- String
SET     @p1 = '01'
DECLARE @p2 NVarChar(2) -- String
SET     @p2 = '20'
DECLARE @p3 NVarChar(2) -- String
SET     @p3 = '35'
DECLARE @p4 NVarChar(2) -- String
SET     @p4 = '44'

SELECT
	DateTime('2010-' || CASE
		WHEN Length([p].[ID]) = 1 THEN '0' || Cast([p].[ID] as VarChar(11))
		ELSE [p].[ID]
	END || '-' || @p1 || ' ' || @p2 || ':' || @p3 || ':' || @p4)
FROM
	[LinqDataTypes] [p]
WHERE
	Cast(StrFTime('%Y', DateTime('2010-' || CASE
		WHEN Length([p].[ID]) = 1 THEN '0' || Cast([p].[ID] as VarChar(11))
		ELSE [p].[ID]
	END || '-' || @p1 || ' ' || @p2 || ':' || @p3 || ':' || @p4)) as int) = 2010

