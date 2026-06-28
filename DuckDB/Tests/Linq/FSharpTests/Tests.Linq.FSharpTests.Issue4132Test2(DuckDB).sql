-- DuckDB

INSERT INTO Issue4132Table
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
	Issue4132Table
SET
	Id = Issue4132Table.Id,
	"Number" = Issue4132Table."Number",
	Text = 'updated recently'
WHERE
	Issue4132Table."Number" = 1

-- DuckDB

SELECT
	r.Id,
	r."Number",
	r.Text
FROM
	Issue4132Table r
WHERE
	r.Id = 1
LIMIT 2

