BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName NVarChar(10) -- String
SET     @LastName = 'Limonadovy'
DECLARE @Gender NChar(1) -- StringFixedLength
SET     @Gender = 'M'

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[LastName] = 'Limonadovy'

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @FirstName NVarChar(6) -- String
SET     @FirstName = 'Johnny'

UPDATE
	[Person] [c_1]
SET
	[c_1].[FirstName] = ?
WHERE
	[c_1].[LastName] = 'Limonadovy'

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[FirstName] = 'Johnny' AND [c_1].[LastName] = 'Limonadovy'

