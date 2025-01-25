BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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
-- SqlServer.2016.MS SqlServer.2016

SELECT
	COUNT(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[LastName] = N'Limonadovy'

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

UPDATE
	[Person]
SET
	[FirstName] = N'Johnny'
WHERE
	[Person].[LastName] = N'Limonadovy'

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	COUNT(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[FirstName] = N'Johnny' AND [c_1].[LastName] = N'Limonadovy'

