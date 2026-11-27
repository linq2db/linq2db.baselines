-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

INSERT INTO ClientEvaluatedRecord
(
	ID
)
VALUES
(
	@ID
)

-- Informix.DB2 Informix
DECLARE @Item1 Integer(4) -- Int32
SET     @Item1 = 5

SELECT FIRST 2
	t1.ID
FROM
	ClientEvaluatedRecord t1
WHERE
	t1.ID = @Item1

