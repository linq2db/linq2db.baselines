-- SqlServer.2016.MS SqlServer.2016
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = 

SELECT
	[m_1].[PersonID],
	[d].[PersonID]
FROM
	[Person] [m_1]
		INNER JOIN [Person] [d] ON [d].[PersonID] > [m_1].[PersonID]
WHERE
	[m_1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@table [x]
	)

-- SqlServer.2016.MS SqlServer.2016
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = 

SELECT
	[p1].[PersonID]
FROM
	[Person] [p1]
WHERE
	[p1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@table [x]
	)

-- SqlServer.2016.MS SqlServer.2016
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = 

SELECT
	[m_1].[PersonID],
	[d].[PersonID]
FROM
	[Person] [m_1]
		INNER JOIN [Person] [d] ON [d].[PersonID] > [m_1].[PersonID]
WHERE
	[m_1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@table [x]
	)

-- SqlServer.2016.MS SqlServer.2016
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = 

SELECT
	[p1].[PersonID]
FROM
	[Person] [p1]
WHERE
	[p1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@table [x]
	)

-- SqlServer.2016.MS SqlServer.2016
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = 

SELECT
	[m_1].[PersonID],
	[d].[PersonID]
FROM
	[Person] [m_1]
		INNER JOIN [Person] [d] ON [d].[PersonID] > [m_1].[PersonID]
WHERE
	[m_1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@table [x]
	)

-- SqlServer.2016.MS SqlServer.2016
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = 

SELECT
	[p1].[PersonID]
FROM
	[Person] [p1]
WHERE
	[p1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@table [x]
	)

-- SqlServer.2016.MS SqlServer.2016
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = 

SELECT
	[m_1].[PersonID],
	[d].[PersonID]
FROM
	[Person] [m_1]
		INNER JOIN [Person] [d] ON [d].[PersonID] > [m_1].[PersonID]
WHERE
	[m_1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@table [x]
	)

-- SqlServer.2016.MS SqlServer.2016
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = 

SELECT
	[p1].[PersonID]
FROM
	[Person] [p1]
WHERE
	[p1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@table [x]
	)

