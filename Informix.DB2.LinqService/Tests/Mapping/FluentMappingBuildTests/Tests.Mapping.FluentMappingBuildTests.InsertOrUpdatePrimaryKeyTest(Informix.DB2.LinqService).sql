BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS FluentTemp

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS FluentTemp
(
	ID   Int          NOT NULL,
	Name NVarChar(20)     NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'

INSERT INTO FluentTemp
(
	ID,
	Name
)
VALUES
(
	@ID,
	@Name
)

BeforeExecute
-- Informix.DB2 Informix

UPDATE
	FluentTemp t1
SET
	ID = t1.ID,
	Name = t1.Name
WHERE
	t1.ID = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS FluentTemp

