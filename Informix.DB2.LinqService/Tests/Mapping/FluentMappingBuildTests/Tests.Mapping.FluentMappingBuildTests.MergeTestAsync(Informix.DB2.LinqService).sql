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

