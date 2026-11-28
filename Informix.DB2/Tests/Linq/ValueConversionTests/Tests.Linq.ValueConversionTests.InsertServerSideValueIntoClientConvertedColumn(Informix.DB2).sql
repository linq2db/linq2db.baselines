-- Informix.DB2 Informix
INSERT INTO Issue5975Row
(
	Id,
	Plain,
	"Date"
)
VALUES
(
	1,
	CURRENT,
	CURRENT
)

-- Informix.DB2 Informix
SELECT FIRST 2
	t1.Id,
	t1.Plain,
	t1."Date"
FROM
	Issue5975Row t1

