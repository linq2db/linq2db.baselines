BeforeExecute
-- SqlCe

SELECT
	Count(*) as [COUNT_1]
FROM
	[Person] [t1]

BeforeExecute
-- SqlCe

SELECT
	[t1].[FirstName],
	[t1].[PersonID] as [ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT
	[_].[PersonID],
	[_].[Taxonomy]
FROM
	[Doctor] [_]
WHERE
	[_].[PersonID] = @ID

BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 2

SELECT
	[_].[PersonID],
	[_].[Taxonomy]
FROM
	[Doctor] [_]
WHERE
	[_].[PersonID] = @ID

BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 3

SELECT
	[_].[PersonID],
	[_].[Taxonomy]
FROM
	[Doctor] [_]
WHERE
	[_].[PersonID] = @ID

BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 4

SELECT
	[_].[PersonID],
	[_].[Taxonomy]
FROM
	[Doctor] [_]
WHERE
	[_].[PersonID] = @ID

