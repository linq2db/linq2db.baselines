--  SqlServer.2008

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



--  SqlServer.2008

DROP TABLE [tempdb]..[#TestEmployees]



