BeforeExecute
-- SqlServer.2005

SELECT 
	Max([t].[PersonID])
FROM
	[Person] [t]

BeforeExecute
-- SqlServer.2005

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	N'FirstName',
	N'LastName',
	N'M'
)

BeforeExecute
-- SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 4

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > @id

