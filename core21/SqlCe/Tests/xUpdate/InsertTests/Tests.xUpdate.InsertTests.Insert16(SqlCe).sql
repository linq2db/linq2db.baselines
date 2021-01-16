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
	Convert(NVarChar(11), Len(@name) + @idx),
	'M'
)

BeforeExecute
-- SqlCe

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] LIKE 'Insert16%' ESCAPE '~'

