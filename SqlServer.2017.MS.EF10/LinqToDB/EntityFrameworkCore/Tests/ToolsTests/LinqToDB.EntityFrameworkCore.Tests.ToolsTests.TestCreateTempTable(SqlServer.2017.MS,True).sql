-- SqlServer.2017

CREATE TABLE [tempdb]..[#TestEmployees]
(
	[IsDeleted]       bit            NOT NULL,
	[EmployeeID]      int            NOT NULL,
	[LastName]        nvarchar(20)   NOT NULL,
	[FirstName]       nvarchar(10)   NOT NULL,
	[Title]           nvarchar(30)       NULL,
	[TitleOfCourtesy] nvarchar(25)       NULL,
	[BirthDate]       datetime           NULL,
	[HireDate]        datetime           NULL,
	[Address]         nvarchar(60)       NULL,
	[City]            nvarchar(15)       NULL,
	[Region]          nvarchar(15)       NULL,
	[PostalCode]      nvarchar(10)       NULL,
	[Country]         nvarchar(15)       NULL,
	[HomePhone]       nvarchar(24)       NULL,
	[Extension]       nvarchar(4)        NULL,
	[Photo]           varbinary(max)     NULL,
	[Notes]           nvarchar(max)      NULL,
	[ReportsTo]       int                NULL,
	[PhotoPath]       nvarchar(255)      NULL,

	PRIMARY KEY CLUSTERED ([EmployeeID])
)



-- SqlServer.2017

INSERT INTO [tempdb]..[#TestEmployees]
(
	[IsDeleted],
	[EmployeeID],
	[LastName],
	[FirstName],
	[Title],
	[TitleOfCourtesy],
	[BirthDate],
	[HireDate],
	[Address],
	[City],
	[Region],
	[PostalCode],
	[Country],
	[HomePhone],
	[Extension],
	[Photo],
	[Notes],
	[ReportsTo],
	[PhotoPath]
)
SELECT
	[e].[IsDeleted],
	[e].[EmployeeID],
	[e].[LastName],
	[e].[FirstName],
	[e].[Title],
	[e].[TitleOfCourtesy],
	[e].[BirthDate],
	[e].[HireDate],
	[e].[Address],
	[e].[City],
	[e].[Region],
	[e].[PostalCode],
	[e].[Country],
	[e].[HomePhone],
	[e].[Extension],
	[e].[Photo],
	[e].[Notes],
	[e].[ReportsTo],
	[e].[PhotoPath]
FROM
	[Employees] [e]
WHERE
	[e].[IsDeleted] = 0



-- SqlServer.2017

SELECT
	COUNT(*)
FROM
	[tempdb]..[#TestEmployees] [e]
WHERE
	[e].[IsDeleted] = 0



Parameters:
@ef_filter__p0='?' (DbType = Boolean)

SELECT COUNT(*)
FROM [Employees] AS [e]
WHERE @ef_filter__p0 = CAST(1 AS bit) OR [e].[IsDeleted] = CAST(0 AS bit) OR [e].[IsDeleted] = CAST(0 AS bit)


-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#TestEmployees]



