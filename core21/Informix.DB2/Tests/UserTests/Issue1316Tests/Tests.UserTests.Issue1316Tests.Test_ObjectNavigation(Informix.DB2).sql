BeforeExecute
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

DROP TABLE Issue1316Tests

