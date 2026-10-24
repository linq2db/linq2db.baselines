-- Informix.DB2 Informix
INSERT INTO InheritanceFilterPositional
(
	Id,
	Code,
	"Value"
)
VALUES
(
	1,
	1,
	42
)

-- Informix.DB2 Informix
SELECT FIRST 2
	t1.Id,
	t1.Code,
	t1."Value"
FROM
	InheritanceFilterPositional t1

