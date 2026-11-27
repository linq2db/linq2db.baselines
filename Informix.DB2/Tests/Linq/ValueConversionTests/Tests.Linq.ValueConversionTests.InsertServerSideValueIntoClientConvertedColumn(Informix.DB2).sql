-- Informix.DB2 Informix
INSERT INTO ShiftedDateRow
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
	ShiftedDateRow t1

