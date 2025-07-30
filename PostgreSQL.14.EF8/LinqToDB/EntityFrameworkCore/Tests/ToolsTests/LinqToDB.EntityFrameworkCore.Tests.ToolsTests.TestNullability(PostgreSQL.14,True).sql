Parameters:
@__ef_filter__p_0='?' (DbType = Boolean), @__test_0='?' (DbType = Int32)

SELECT e."EmployeeID", e."Address", e."BirthDate", e."City", e."Country", e."Extension", e."FirstName", e."HireDate", e."HomePhone", e."IsDeleted", e."LastName", e."Notes", e."Photo", e."PhotoPath", e."PostalCode", e."Region", e."ReportsTo", e."Title", e."TitleOfCourtesy"
FROM "Employees" AS e
WHERE (@__ef_filter__p_0 OR NOT (e."IsDeleted") OR NOT (e."IsDeleted")) AND e."EmployeeID" = @__test_0


-- PostgreSQL.9.5 PostgreSQL
DECLARE @test Integer -- Int32
SET     @test = 1

SELECT
	e."IsDeleted",
	e."EmployeeID",
	e."LastName",
	e."FirstName",
	e."Title",
	e."TitleOfCourtesy",
	e."BirthDate",
	e."HireDate",
	e."Address",
	e."City",
	e."Region",
	e."PostalCode",
	e."Country",
	e."HomePhone",
	e."Extension",
	e."Photo",
	e."Notes",
	e."ReportsTo",
	e."PhotoPath"
FROM
	"Employees" e
WHERE
	NOT e."IsDeleted" AND e."EmployeeID" = :test



