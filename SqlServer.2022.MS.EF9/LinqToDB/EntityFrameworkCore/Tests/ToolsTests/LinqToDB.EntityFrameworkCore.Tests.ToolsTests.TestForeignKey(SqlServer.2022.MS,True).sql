Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT [e].[EmployeeID], [e].[Address], [e].[BirthDate], [e].[City], [e].[Country], [e].[Extension], [e].[FirstName], [e].[HireDate], [e].[HomePhone], [e].[IsDeleted], [e].[LastName], [e].[Notes], [e].[Photo], [e].[PhotoPath], [e].[PostalCode], [e].[Region], [e].[ReportsTo], [e].[Title], [e].[TitleOfCourtesy], [e1].[EmployeeID], [e1].[Address], [e1].[BirthDate], [e1].[City], [e1].[Country], [e1].[Extension], [e1].[FirstName], [e1].[HireDate], [e1].[HomePhone], [e1].[IsDeleted], [e1].[LastName], [e1].[Notes], [e1].[Photo], [e1].[PhotoPath], [e1].[PostalCode], [e1].[Region], [e1].[ReportsTo], [e1].[Title], [e1].[TitleOfCourtesy]
FROM [Employees] AS [e]
LEFT JOIN (
    SELECT [e0].[EmployeeID], [e0].[Address], [e0].[BirthDate], [e0].[City], [e0].[Country], [e0].[Extension], [e0].[FirstName], [e0].[HireDate], [e0].[HomePhone], [e0].[IsDeleted], [e0].[LastName], [e0].[Notes], [e0].[Photo], [e0].[PhotoPath], [e0].[PostalCode], [e0].[Region], [e0].[ReportsTo], [e0].[Title], [e0].[TitleOfCourtesy]
    FROM [Employees] AS [e0]
    WHERE @__ef_filter__p_0 = CAST(1 AS bit) OR [e0].[IsDeleted] = CAST(0 AS bit) OR [e0].[IsDeleted] = CAST(0 AS bit)
) AS [e1] ON [e].[ReportsTo] = [e1].[EmployeeID]
WHERE @__ef_filter__p_0 = CAST(1 AS bit) OR [e].[IsDeleted] = CAST(0 AS bit) OR [e].[IsDeleted] = CAST(0 AS bit)


-- SqlServer.2022

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
	[e].[PhotoPath],
	[a_ReportsToNavigation].[IsDeleted],
	[a_ReportsToNavigation].[EmployeeID],
	[a_ReportsToNavigation].[LastName],
	[a_ReportsToNavigation].[FirstName],
	[a_ReportsToNavigation].[Title],
	[a_ReportsToNavigation].[TitleOfCourtesy],
	[a_ReportsToNavigation].[BirthDate],
	[a_ReportsToNavigation].[HireDate],
	[a_ReportsToNavigation].[Address],
	[a_ReportsToNavigation].[City],
	[a_ReportsToNavigation].[Region],
	[a_ReportsToNavigation].[PostalCode],
	[a_ReportsToNavigation].[Country],
	[a_ReportsToNavigation].[HomePhone],
	[a_ReportsToNavigation].[Extension],
	[a_ReportsToNavigation].[Photo],
	[a_ReportsToNavigation].[Notes],
	[a_ReportsToNavigation].[ReportsTo],
	[a_ReportsToNavigation].[PhotoPath]
FROM
	[Employees] [e]
		LEFT JOIN [Employees] [a_ReportsToNavigation] ON [e].[ReportsTo] = [a_ReportsToNavigation].[EmployeeID] AND ([a_ReportsToNavigation].[IsDeleted] = 0 OR [a_ReportsToNavigation].[IsDeleted] = 0)
WHERE
	[e].[IsDeleted] = 0 OR [e].[IsDeleted] = 0



