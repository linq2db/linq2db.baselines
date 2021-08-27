BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE 'Jo%' ESCAPE '~' AND Convert(VarBinary(8000), SUBSTRING([p].[FirstName], 1, 2)) = Convert(VarBinary(8000), 'Jo') AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE 'jo%' ESCAPE '~' AND Convert(VarBinary(8000), SUBSTRING([p].[FirstName], 1, 2)) = Convert(VarBinary(8000), 'jo') AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE 'Jo%' ESCAPE '~' OR Convert(VarBinary(8000), SUBSTRING([p].[FirstName], 1, 2)) <> Convert(VarBinary(8000), 'Jo')) AND
	[p].[PersonID] = 1

