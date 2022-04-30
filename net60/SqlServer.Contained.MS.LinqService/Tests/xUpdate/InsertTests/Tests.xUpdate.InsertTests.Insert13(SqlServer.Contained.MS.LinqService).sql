BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	Max([t].[PersonID])
FROM
	[Person] [t]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

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
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 4

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > @id

