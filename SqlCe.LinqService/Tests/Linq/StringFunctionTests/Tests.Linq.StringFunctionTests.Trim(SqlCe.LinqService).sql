﻿BeforeExecute
-- SqlCe

SELECT
	[pp].[PersonID] as [ID],
	'  ' + [pp].[FirstName] + ' ' as [Name]
FROM
	[Person] [pp]
WHERE
	[pp].[PersonID] = 1 AND LTrim(RTrim('  ' + [pp].[FirstName] + ' ')) = 'John'

