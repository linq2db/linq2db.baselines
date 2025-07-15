BeforeExecute
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

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	t1.ID
FROM
	Issue1316Tests t1
WHERE
	t1.ID IN (4, 5, 6)

