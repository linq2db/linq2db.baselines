BeforeExecute
-- SqlServer.2017

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	N'John',
	N'Limonadovy',
	N'M'
)

BeforeExecute
-- SqlServer.2017

SELECT
	COUNT(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[LastName] = N'Limonadovy'

BeforeExecute
-- SqlServer.2017

UPDATE
	[Person]
SET
	[FirstName] = N'Johnny'
WHERE
	[Person].[LastName] = N'Limonadovy'

BeforeExecute
-- SqlServer.2017

SELECT
	COUNT(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[FirstName] = N'Johnny' AND [c_1].[LastName] = N'Limonadovy'

