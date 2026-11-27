-- DuckDB
INSERT INTO RecordSetterTable
(
	Id,
	"Number",
	Text
)
VALUES
(
	1,
	1,
	'before'
)

-- DuckDB
UPDATE
	RecordSetterTable
SET
	Text = 'updated recently'
WHERE
	RecordSetterTable."Number" = 1

-- DuckDB
SELECT
	r.Id,
	r."Number",
	r.Text
FROM
	RecordSetterTable r
WHERE
	r.Id = 1
LIMIT 2

