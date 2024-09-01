Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

-- Tagged query

SELECT [e].[EmployeeID], [e].[Address], [e].[BirthDate], [e].[City], [e].[Country], [e].[Extension], [e].[FirstName], [e].[HireDate], [e].[HomePhone], [e].[IsDeleted], [e].[LastName], [e].[Notes], [e].[Photo], [e].[PhotoPath], [e].[PostalCode], [e].[Region], [e].[ReportsTo], [e].[Title], [e].[TitleOfCourtesy], [t].[EmployeeID], [t].[Address], [t].[BirthDate], [t].[City], [t].[Country], [t].[Extension], [t].[FirstName], [t].[HireDate], [t].[HomePhone], [t].[IsDeleted], [t].[LastName], [t].[Notes], [t].[Photo], [t].[PhotoPath], [t].[PostalCode], [t].[Region], [t].[ReportsTo], [t].[Title], [t].[TitleOfCourtesy]
FROM [Employees] AS [e]
LEFT JOIN (
    SELECT [e0].[EmployeeID], [e0].[Address], [e0].[BirthDate], [e0].[City], [e0].[Country], [e0].[Extension], [e0].[FirstName], [e0].[HireDate], [e0].[HomePhone], [e0].[IsDeleted], [e0].[LastName], [e0].[Notes], [e0].[Photo], [e0].[PhotoPath], [e0].[PostalCode], [e0].[Region], [e0].[ReportsTo], [e0].[Title], [e0].[TitleOfCourtesy]
    FROM [Employees] AS [e0]
    WHERE (@__ef_filter__p_0 = CAST(1 AS bit)) OR ([e0].[IsDeleted] <> CAST(1 AS bit))
) AS [t] ON [e].[ReportsTo] = [t].[EmployeeID]
WHERE (@__ef_filter__p_0 = CAST(1 AS bit)) OR ([e].[IsDeleted] <> CAST(1 AS bit))


