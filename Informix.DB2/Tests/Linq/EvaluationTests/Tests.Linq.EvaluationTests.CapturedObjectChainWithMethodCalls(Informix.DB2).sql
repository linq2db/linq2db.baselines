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
DECLARE @p Integer(4) -- Int32
SET     @p = 5

SELECT FIRST 2
	t1.ID
FROM
	ClientEvaluatedRecord t1
WHERE
	t1.ID = @p

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5

SELECT FIRST 2
	t1.ID
FROM
	ClientEvaluatedRecord t1
WHERE
	t1.ID = @Id

