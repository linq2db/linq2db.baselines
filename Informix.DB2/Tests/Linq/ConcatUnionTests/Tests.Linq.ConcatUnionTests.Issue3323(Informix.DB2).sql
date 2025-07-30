BeforeExecute
-- Informix.DB2 Informix

INSERT INTO Issue3323Table
(
	Id,
	FistName,
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

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Text,
	t1.FistName || ' ' || t1.LastName
FROM
	Issue3323Table t1
UNION ALL
SELECT
	t2.Id,
	t2.Text,
	t2.FistName || ' ' || t2.LastName
FROM
	Issue3323Table t2

