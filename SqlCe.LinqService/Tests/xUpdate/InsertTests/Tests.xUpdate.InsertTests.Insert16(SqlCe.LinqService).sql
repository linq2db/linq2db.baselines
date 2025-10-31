BeforeExecute
-- SqlCe (asynchronously)

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @name Int -- Int32
SET     @name = 8
DECLARE @idx Int -- Int32
SET     @idx = 4

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	'Insert16',
	CAST(@name + @idx AS NVarChar(11)),
	'M'
)

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [Count_1]
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- SqlCe (asynchronously)

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] LIKE 'Insert16%' ESCAPE '~'

