-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	CStr(COUNT(*)) + ' items have not been processed, e.g. #' + CASE
		WHEN MIN([s].[PersonID]) IS NULL THEN ''
		WHEN MIN([s].[PersonID]) IS NOT NULL THEN CStr(MIN([s].[PersonID]))
		ELSE NULL
	END + '.'
FROM
	[Person] [s]
WHERE
	[s].[LastName] <> 'ERROR'
HAVING
	COUNT(*) > 0

