BeforeExecute
-- SqlCe

SELECT 
	Max([t].[PersonID])
FROM
	[Person] [t]

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
	'FirstName',
	'LastName',
	'F'
)

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 4

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > @id

