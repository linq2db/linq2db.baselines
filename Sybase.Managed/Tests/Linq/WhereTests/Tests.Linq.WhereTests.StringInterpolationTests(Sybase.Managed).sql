-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	([p].[LastName] + ', ' + [p].[FirstName]) = (CASE WHEN [p].[LastName] IS NULL OR ', ' IS NULL OR [p].[FirstName] IS NULL THEN NULL ELSE [p].[LastName] + ', ' + [p].[FirstName] END) AND
	('<' + [p].[LastName] + ', ' + [p].[FirstName] + '>') = (CASE WHEN '<' IS NULL OR [p].[LastName] IS NULL OR ', ' IS NULL OR [p].[FirstName] IS NULL OR '>' IS NULL THEN NULL ELSE '<' + [p].[LastName] + ', ' + [p].[FirstName] + '>' END) AND
	('<' + [p].[LastName] + [p].[FirstName] + '>') = (CASE WHEN '<' IS NULL OR [p].[LastName] IS NULL OR [p].[FirstName] IS NULL OR '>' IS NULL THEN NULL ELSE '<' + [p].[LastName] + [p].[FirstName] + '>' END) AND
	('<{p.LastName}, ' + [p].[FirstName] + ' {' + [p].[LastName] + '}>') = (CASE WHEN '<{p.LastName}, ' IS NULL OR [p].[FirstName] IS NULL OR ' {' IS NULL OR [p].[LastName] IS NULL OR '}>' IS NULL THEN NULL ELSE '<{p.LastName}, ' + [p].[FirstName] + ' {' + [p].[LastName] + '}>' END) AND
	('{}' + [p].[LastName]) = (CASE WHEN '{}' IS NULL OR [p].[LastName] IS NULL THEN NULL ELSE '{}' + [p].[LastName] END)

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Person] [t1]

