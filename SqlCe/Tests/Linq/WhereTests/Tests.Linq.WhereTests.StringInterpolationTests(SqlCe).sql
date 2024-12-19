BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	[p].[LastName] + ', ' + [p].[FirstName] = ([p].[LastName] + ', ' + [p].[FirstName]) AND
	'<' + [p].[LastName] + ', ' + [p].[FirstName] + '>' = ('<' + [p].[LastName] + ', ' + [p].[FirstName]) + '>' AND
	'<' + [p].[LastName] + [p].[FirstName] + '>' = ('<' + [p].[LastName] + [p].[FirstName]) + '>' AND
	('<{p.LastName}, ' + [p].[FirstName] + ' {' + [p].[LastName] + '}>') = ('<{p.LastName}, ' + [p].[FirstName] + ' {' + [p].[LastName]) + '}>' AND
	'{}' + [p].[LastName] = '{}' + [p].[LastName]

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [t1]

