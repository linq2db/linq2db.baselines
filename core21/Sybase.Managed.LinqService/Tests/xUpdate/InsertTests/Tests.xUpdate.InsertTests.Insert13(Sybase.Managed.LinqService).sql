BeforeExecute
-- Sybase.Managed Sybase

SELECT 
	Max([t].[PersonID])
FROM
	[Person] [t]

BeforeExecute
-- Sybase.Managed Sybase

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
	'M'
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 4

DELETE FROM [Person]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > @id

