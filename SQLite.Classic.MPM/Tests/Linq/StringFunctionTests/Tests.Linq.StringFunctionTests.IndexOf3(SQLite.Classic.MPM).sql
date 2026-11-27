-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Value Integer -- Int32
SET     @Value = 7
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 3
DECLARE @s NVarChar(1) -- String
SET     @s = 'e'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CASE
		WHEN INSTR(Substr(SUBSTRING([p].[LastName], 1, @Value), @Value_1), @s) = 0
			THEN 0
		ELSE INSTR(Substr(SUBSTRING([p].[LastName], 1, @Value), @Value_1), @s) + @Value_1 - 1
	END - 1 = 4 AND
	[p].[PersonID] = 2

