-- DuckDB
INSERT INTO UpdateOutputOwner DEFAULT VALUES

-- DuckDB
UPDATE
	UpdateOutputItem
SET
	"Value" = 1
FROM
	UpdateOutputOwner a
WHERE
	a.Id = UpdateOutputItem.TestId
RETURNING
	UpdateOutputItem.Id

-- DuckDB
UPDATE
	UpdateOutputItem
SET
	"Value" = 1
FROM
	UpdateOutputOwner a
WHERE
	a.Id = UpdateOutputItem.TestId
RETURNING
	UpdateOutputItem.Id

