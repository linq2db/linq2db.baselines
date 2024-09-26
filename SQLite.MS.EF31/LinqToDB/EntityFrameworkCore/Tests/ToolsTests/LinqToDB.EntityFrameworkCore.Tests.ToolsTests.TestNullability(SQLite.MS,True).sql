Parameters:
@__ef_filter__p_0='?', @__test_0='?'

SELECT "e"."EmployeeID", "e"."Address", "e"."BirthDate", "e"."City", "e"."Country", "e"."Extension", "e"."FirstName", "e"."HireDate", "e"."HomePhone", "e"."IsDeleted", "e"."LastName", "e"."Notes", "e"."Photo", "e"."PhotoPath", "e"."PostalCode", "e"."Region", "e"."ReportsTo", "e"."Title", "e"."TitleOfCourtesy"
FROM "Employees" AS "e"
WHERE (@__ef_filter__p_0 OR NOT ("e"."IsDeleted")) AND ("e"."EmployeeID" = @__test_0)


