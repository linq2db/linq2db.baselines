BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	Max([t].[PersonID])
FROM
	[Person] [t]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

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
-- SqlServer.2019 SqlServer.2017
DECLARE @id Int -- Int32
SET     @id = 4

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > @id

