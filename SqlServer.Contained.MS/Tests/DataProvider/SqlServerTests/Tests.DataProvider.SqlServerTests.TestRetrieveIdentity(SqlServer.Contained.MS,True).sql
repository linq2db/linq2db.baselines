-- SqlServer.Contained.MS SqlServer.2019
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N''
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N''
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'M'

INSERT INTO [Person]
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

-- SqlServer.Contained.MS SqlServer.2019
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N''
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N''
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'M'

INSERT INTO [Person]
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

-- SqlServer.Contained.MS SqlServer.2019
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N''
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N''
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'M'

INSERT INTO [Person]
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

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	MAX([t1].[PersonID])
FROM
	[Person] [t1]

-- SqlServer.Contained.MS SqlServer.2019

SELECT IDENT_CURRENT('Person')

-- SqlServer.Contained.MS SqlServer.2019

SELECT IDENT_INCR('Person')

-- SqlServer.Contained.MS SqlServer.2019
DECLARE @tableName NVarChar(4000) -- String
SET     @tableName = N'[Person]'

SELECT
	IDENT_CURRENT(@tableName),
	IDENT_INCR(@tableName)

