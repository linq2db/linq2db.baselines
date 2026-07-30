-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

INSERT INTO Issue1316Tests
(
	ID
)
VALUES
(
	@ID
)

-- Informix.DB2 Informix
DECLARE @Child Integer(4) -- Int32
SET     @Child = 5

SELECT FIRST 2
	t1.ID
FROM
	Issue1316Tests t1
WHERE
	t1.ID = @Child

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5

SELECT FIRST 2
	t1.ID
FROM
	Issue1316Tests t1
WHERE
	t1.ID = @Id

