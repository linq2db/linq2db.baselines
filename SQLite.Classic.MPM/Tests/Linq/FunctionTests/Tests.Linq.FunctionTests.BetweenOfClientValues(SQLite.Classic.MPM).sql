-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @value Integer -- Int32
SET     @value = 2
DECLARE @noValue Integer -- Int32
SET     @noValue = NULL

SELECT
	[p].[ParentID],
	@value BETWEEN 1 AND 3,
	CASE
		WHEN @noValue NOT BETWEEN 1 AND 3 THEN 'a'
		ELSE 'b'
	END
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1
LIMIT 2

