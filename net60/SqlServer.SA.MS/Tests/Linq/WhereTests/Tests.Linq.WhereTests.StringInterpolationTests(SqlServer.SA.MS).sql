﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

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
-- SqlServer.SA.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Person] [t1]

