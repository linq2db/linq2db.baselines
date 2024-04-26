BeforeExecute
-- SqlCe

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- SqlCe
DECLARE @name NVarChar(8) -- String
SET     @name = 'Insert16'
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
	CAST(Len(@name) + @idx AS NVarChar(11)),
	'M'
)

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- SqlCe

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] LIKE 'Insert16%' ESCAPE '~'

