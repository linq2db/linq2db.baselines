﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[LastName] + N', ' + [p].[FirstName] = ([p].[LastName] + N', ' + [p].[FirstName]) AND
	N'<' + [p].[LastName] + N', ' + [p].[FirstName] + N'>' = (N'<' + [p].[LastName] + N', ' + [p].[FirstName]) + N'>' AND
	N'<' + [p].[LastName] + [p].[FirstName] + N'>' = (N'<' + [p].[LastName] + [p].[FirstName]) + N'>' AND
	(N'<{p.LastName}, ' + [p].[FirstName] + N' {' + [p].[LastName] + N'}>') = (N'<{p.LastName}, ' + [p].[FirstName] + N' {' + [p].[LastName]) + N'}>' AND
	N'{}' + [p].[LastName] = N'{}' + [p].[LastName]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	Count(*)
FROM
	[Person] [t1]

