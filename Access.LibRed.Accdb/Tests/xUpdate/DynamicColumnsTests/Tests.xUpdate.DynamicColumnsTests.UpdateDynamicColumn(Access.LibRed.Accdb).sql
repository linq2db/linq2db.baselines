-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[LastName] = 'Limonadovy'

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
UPDATE
	[Person] [c_1]
SET
	[c_1].[FirstName] = 'Johnny'
WHERE
	[c_1].[LastName] = 'Limonadovy'

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[FirstName] = 'Johnny' AND [c_1].[LastName] = 'Limonadovy'

