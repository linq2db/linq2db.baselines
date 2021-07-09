BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012


IF EXISTS (SELECT * FROM sys.objects WHERE type = 'IF' AND name = 'PersonTableFunction')
	BEGIN DROP FUNCTION PersonTableFunction
END

BeforeExecute
-- SqlServer.2014 SqlServer.2012


CREATE FUNCTION dbo.PersonTableFunction( @ID int, @FirstName varchar(50))
RETURNS TABLE
AS
	RETURN ( SELECT * FROM dbo.Person WHERE PersonID = @ID AND FirstName = @FirstName )

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[PersonTableFunction](1, N'John') [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[PersonTableFunction](1, N'John') [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[PersonTableFunction](1, N'John') [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[PersonTableFunction](1, N'John') [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'John'
DECLARE @ID_1 Int -- Int32
SET     @ID_1 = 1
DECLARE @FirstName_1 NVarChar(4000) -- String
SET     @FirstName_1 = N'John'
DECLARE @ID_2 Int -- Int32
SET     @ID_2 = 1
DECLARE @FirstName_2 NVarChar(4000) -- String
SET     @FirstName_2 = N'John'
DECLARE @ID_3 Int -- Int32
SET     @ID_3 = 1
DECLARE @FirstName_3 NVarChar(4000) -- String
SET     @FirstName_3 = N'John'

SELECT TOP (@take)
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [PersonTableFunction](@ID, @FirstName) [tf] ON [tf].[PersonID] = [p].[PersonID]
		INNER JOIN [PersonTableFunction](@ID_1, @FirstName_1) [tft] ON [tft].[PersonID] = [p].[PersonID]
		INNER JOIN PersonTableFunction(@ID_2, @FirstName_2) [te] ON [te].[PersonID] = [p].[PersonID]
		INNER JOIN PersonTableFunction(@ID_3, @FirstName_3) [tet] ON [tet].[PersonID] = [p].[PersonID]

BeforeExecute
-- SqlServer.2014 SqlServer.2012


IF EXISTS (SELECT * FROM sys.objects WHERE type = 'IF' AND name = 'PersonTableFunction')
	BEGIN DROP FUNCTION PersonTableFunction
END

