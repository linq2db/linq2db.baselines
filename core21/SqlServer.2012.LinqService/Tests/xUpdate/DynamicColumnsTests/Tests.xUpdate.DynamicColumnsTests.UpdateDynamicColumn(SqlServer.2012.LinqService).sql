BeforeExecute
-- SqlServer.2012

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
-- SqlServer.2012

SELECT
	Count(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[LastName] = N'Limonadovy'

BeforeExecute
-- SqlServer.2012

UPDATE
	[c_1]
SET
	[c_1].[FirstName] = N'Johnny'
FROM
	[Person] [c_1]
WHERE
	[c_1].[LastName] = N'Limonadovy'

BeforeExecute
-- SqlServer.2012

SELECT
	Count(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[FirstName] = N'Johnny' AND [c_1].[LastName] = N'Limonadovy'

BeforeExecute
-- SqlServer.2012

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[LastName] = N'Limonadovy'

