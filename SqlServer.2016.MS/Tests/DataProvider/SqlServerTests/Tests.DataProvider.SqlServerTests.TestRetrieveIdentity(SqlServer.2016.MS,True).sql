BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
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

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
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

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
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

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	MAX([t1].[PersonID])
FROM
	[Person] [t1]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT IDENT_CURRENT('Person')

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT IDENT_INCR('Person')

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @tableName NVarChar(4000) -- String
SET     @tableName = N'[Person]'

SELECT
	IDENT_CURRENT(@tableName),
	IDENT_INCR(@tableName)

