﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[LastName] || ', ' || [p].[FirstName] = ([p].[LastName] || ', ' || [p].[FirstName]) AND
	'<' || [p].[LastName] || ', ' || [p].[FirstName] || '>' = ('<' || [p].[LastName] || ', ' || [p].[FirstName]) || '>' AND
	('<{p.LastName}, ' || [p].[FirstName] || ' {' || [p].[LastName] || '}>') = ('<{p.LastName}, ' || [p].[FirstName] || ' {' || [p].[LastName]) || '}>'

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Person] [t1]

