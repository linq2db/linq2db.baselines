﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[LastName] || ', ' || [p].[FirstName] = ([p].[LastName] || ', ' || [p].[FirstName]) AND
	'<' || [p].[LastName] || ', ' || [p].[FirstName] || '>' = ('<' || [p].[LastName] || ', ' || [p].[FirstName]) || '>' AND
	'<' || [p].[LastName] || [p].[FirstName] || '>' = ('<' || [p].[LastName] || [p].[FirstName]) || '>' AND
	('<{p.LastName}, ' || [p].[FirstName] || ' {' || [p].[LastName] || '}>') = ('<{p.LastName}, ' || [p].[FirstName] || ' {' || [p].[LastName]) || '}>' AND
	'{}' || [p].[LastName] = '{}' || [p].[LastName]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Person] [t1]

