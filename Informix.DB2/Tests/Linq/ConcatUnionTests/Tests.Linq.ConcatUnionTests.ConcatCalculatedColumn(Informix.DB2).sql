-- Informix.DB2 Informix
INSERT INTO CalculatedColumnSetTable
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
	t1.Id,
	t1.Text,
	Nvl(t1.FirstName, '') || ' ' || Nvl(t1.LastName, '')
FROM
	CalculatedColumnSetTable t1
UNION ALL
SELECT
	t2.Id,
	t2.Text,
	Nvl(t2.FirstName, '') || ' ' || Nvl(t2.LastName, '')
FROM
	CalculatedColumnSetTable t2

