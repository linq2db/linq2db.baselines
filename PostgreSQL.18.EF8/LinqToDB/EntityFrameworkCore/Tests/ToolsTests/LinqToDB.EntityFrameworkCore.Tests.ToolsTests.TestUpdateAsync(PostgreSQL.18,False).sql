﻿-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @test Integer -- Int32
SET     @test = 1

UPDATE
	"Employees"
SET
	"Address" = "Employees"."Address"
WHERE
	"Employees"."EmployeeID" = :test



