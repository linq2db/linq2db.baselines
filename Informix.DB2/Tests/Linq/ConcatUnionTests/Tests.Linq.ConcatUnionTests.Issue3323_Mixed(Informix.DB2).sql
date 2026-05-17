-- Informix.DB2 Informix

INSERT INTO Issue3323Table
(
	Id,
	FirstName,
	LastName,
	Text
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

-- Informix.DB2 Informix

SELECT
	r.Id,
	Nvl(r.FirstName, '') || ' ' || Nvl(r.LastName, '')
FROM
	Issue3323Table r
UNION ALL
SELECT
	r_1.Id + 1,
	r_1.Text
FROM
	Issue3323Table r_1

-- Informix.DB2 Informix

SELECT
	r.Id + 1,
	r.Text
FROM
	Issue3323Table r
UNION ALL
SELECT
	r_1.Id,
	Nvl(r_1.FirstName, '') || ' ' || Nvl(r_1.LastName, '')
FROM
	Issue3323Table r_1

