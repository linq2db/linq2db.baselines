BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND [p].[FirstName] LIKE 'Jo%' ESCAPE '~' AND
	Convert(VarBinary(8000), SUBSTRING([p].[FirstName], 1, 2)) = Convert(VarBinary(8000), 'Jo')

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND [p].[FirstName] LIKE 'jo%' ESCAPE '~' AND
	Convert(VarBinary(8000), SUBSTRING([p].[FirstName], 1, 2)) = Convert(VarBinary(8000), 'jo')

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE 'Jo%' ESCAPE '~' OR Convert(VarBinary(8000), SUBSTRING([p].[FirstName], 1, 2)) <> Convert(VarBinary(8000), 'Jo')) AND
	[p].[PersonID] = 1

