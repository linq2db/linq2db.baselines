-- Informix.DB2 Informix
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

-- Informix.DB2 Informix
UPDATE
	Issue4132Table row_1
SET
	Text = 'updated recently'
WHERE
	row_1."Number" = 1

-- Informix.DB2 Informix
SELECT FIRST 2
	r.Id,
	r."Number",
	r.Text
FROM
	Issue4132Table r
WHERE
	r.Id = 1

