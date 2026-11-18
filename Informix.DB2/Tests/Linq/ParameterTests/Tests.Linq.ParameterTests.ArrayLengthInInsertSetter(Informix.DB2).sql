-- Informix.DB2 Informix
DECLARE @arr Integer(4) -- Int32
SET     @arr = 3

INSERT INTO ArrayLengthTable
(
	Id,
	"Value"
)
VALUES
(
	1,
	@arr
)

-- Informix.DB2 Informix
SELECT FIRST 2
	t1.Id,
	t1."Value"
FROM
	ArrayLengthTable t1

