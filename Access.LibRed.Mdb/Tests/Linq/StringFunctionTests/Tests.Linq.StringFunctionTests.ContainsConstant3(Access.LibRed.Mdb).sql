-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IN ('oh', 'oh''', 'oh\')

