BeforeExecute
-- SqlCe

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

BeforeExecute
-- SqlCe

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	'擊敗奴隸',
	'Юникодкин',
	'M'
)

BeforeExecute
-- SqlCe

SELECT @@IDENTITY

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = '擊敗奴隸' AND [p].[LastName] = 'Юникодкин'

BeforeExecute
-- SqlCe

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

