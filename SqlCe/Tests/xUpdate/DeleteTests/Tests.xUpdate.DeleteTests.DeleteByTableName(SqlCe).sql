BeforeExecute
-- SqlCe
DECLARE @FirstName NVarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender NVarChar(1) -- String
SET     @Gender = 'M'

INSERT INTO [xxPerson]
(
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[xxPerson] [t1]

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[t1].[FirstName],
	[t1].[PersonID] as [ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[xxPerson] [t1]

BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 1

DELETE FROM
	[xxPerson]
WHERE
	[xxPerson].[PersonID] = @ID

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[xxPerson] [t1]

