-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (1)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.2017.MS SqlServer.2017


IF EXISTS (SELECT * FROM sys.objects WHERE type = 'IF' AND name = 'PersonTableFunction')
	BEGIN DROP FUNCTION PersonTableFunction
END

-- SqlServer.2017.MS SqlServer.2017


CREATE FUNCTION dbo.PersonTableFunction( @ID int, @FirstName varchar(50))
RETURNS TABLE
AS
	RETURN ( SELECT * FROM dbo.Person WHERE PersonID = @ID AND FirstName = @FirstName )

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 1
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'John'

SELECT TOP (1)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[PersonTableFunction](@p, @p_1) [t1]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 1
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'John'

SELECT TOP (1)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[PersonTableFunction](@p, @p_1) [t1]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 1
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'John'

SELECT TOP (1)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[PersonTableFunction](@p, @p_1) [t1]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 1
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'John'

SELECT TOP (1)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[PersonTableFunction](@p, @p_1) [t1]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'John'

SELECT TOP (1)
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [PersonTableFunction](@ID, @FirstName) [tf] ON [tf].[PersonID] = [p].[PersonID]
		INNER JOIN [PersonTableFunction](@ID, @FirstName) [tft] ON [tft].[PersonID] = [p].[PersonID]
		INNER JOIN PersonTableFunction(@ID, @FirstName) [te] ON [te].[PersonID] = [p].[PersonID]
		INNER JOIN PersonTableFunction(@ID, @FirstName) [tet] ON [tet].[PersonID] = [p].[PersonID]

-- SqlServer.2017.MS SqlServer.2017


IF EXISTS (SELECT * FROM sys.objects WHERE type = 'IF' AND name = 'PersonTableFunction')
	BEGIN DROP FUNCTION PersonTableFunction
END

