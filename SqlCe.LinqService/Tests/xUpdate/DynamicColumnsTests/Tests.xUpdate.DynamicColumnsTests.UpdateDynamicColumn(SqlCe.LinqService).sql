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
	'John',
	'Limonadovy',
	'M'
)

BeforeExecute
-- SqlCe

SELECT
	Count(*) as [COUNT_1]
FROM
	[Person] [c_1]
WHERE
	[c_1].[LastName] = 'Limonadovy'

BeforeExecute
-- SqlCe
DECLARE @FirstName NVarChar(6) -- String
SET     @FirstName = 'Johnny'

UPDATE
	[Person]
SET
	[FirstName] = @FirstName
WHERE
	[Person].[LastName] = 'Limonadovy'

BeforeExecute
-- SqlCe

SELECT
	Count(*) as [COUNT_1]
FROM
	[Person] [c_1]
WHERE
	[c_1].[FirstName] = 'Johnny' AND [c_1].[LastName] = 'Limonadovy'

