-- DuckDB
UPDATE
	UpdateOutputPerson
SET
	Name = UpdateOutputPerson.Name || CAST(r.SalaryId AS VARCHAR)
FROM
	UpdateOutputEmployee r
WHERE
	UpdateOutputPerson.EmployeeId = r.Id
RETURNING
	UpdateOutputPerson.EmployeeId

