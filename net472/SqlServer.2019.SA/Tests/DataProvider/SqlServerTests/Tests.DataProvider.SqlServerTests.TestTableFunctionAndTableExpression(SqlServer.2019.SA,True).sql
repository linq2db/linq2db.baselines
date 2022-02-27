﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2019
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
-- SqlServer.2019.SA SqlServer.2019


IF EXISTS (SELECT * FROM sys.objects WHERE type = 'IF' AND name = 'PersonTableFunction')
	BEGIN DROP FUNCTION PersonTableFunction
END

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019


CREATE FUNCTION dbo.PersonTableFunction( @ID int, @FirstName varchar(50))
RETURNS TABLE
AS
	RETURN ( SELECT * FROM dbo.Person WHERE PersonID = @ID AND FirstName = @FirstName )

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019
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
-- SqlServer.2019.SA SqlServer.2019
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
-- SqlServer.2019.SA SqlServer.2019
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
-- SqlServer.2019.SA SqlServer.2019
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
-- SqlServer.2019.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'John'

SELECT TOP (@take)
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

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019


IF EXISTS (SELECT * FROM sys.objects WHERE type = 'IF' AND name = 'PersonTableFunction')
	BEGIN DROP FUNCTION PersonTableFunction
END

