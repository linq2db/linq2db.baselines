BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT TOP (1)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019


IF EXISTS (SELECT * FROM sys.objects WHERE type = 'IF' AND name = 'PersonTableFunction')
	BEGIN DROP FUNCTION PersonTableFunction
END

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019


CREATE FUNCTION dbo.PersonTableFunction( @ID int, @FirstName varchar(50))
RETURNS TABLE
AS
	RETURN ( SELECT * FROM dbo.Person WHERE PersonID = @ID AND FirstName = @FirstName )

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
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

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
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

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
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

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
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

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
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

SELECT TOP (1)
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
-- SqlServer.Contained.MS SqlServer.2019


IF EXISTS (SELECT * FROM sys.objects WHERE type = 'IF' AND name = 'PersonTableFunction')
	BEGIN DROP FUNCTION PersonTableFunction
END

