﻿BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Issue1316Tests
(
	ID Int NOT NULL,

	PRIMARY KEY (ID)
)

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
DECLARE @ID_1 Integer(4) -- Int32
SET     @ID_1 = 5

SELECT FIRST 2
	t1.ID
FROM
	Issue1316Tests t1
WHERE
	t1.ID = @ID_1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id_1 Integer(4) -- Int32
SET     @Id_1 = 5

SELECT FIRST 2
	t1.ID
FROM
	Issue1316Tests t1
WHERE
	t1.ID = @Id_1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Issue1316Tests

