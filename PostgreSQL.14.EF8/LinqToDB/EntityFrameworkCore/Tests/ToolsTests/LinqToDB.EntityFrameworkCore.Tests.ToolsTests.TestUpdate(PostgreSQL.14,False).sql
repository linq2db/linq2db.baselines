-- PostgreSQL.13 PostgreSQL13
DECLARE @test Integer -- Int32
SET     @test = 1

UPDATE
	"Employees"
SET
	"Address" = "Employees"."Address"
WHERE
	"Employees"."EmployeeID" = :test



