BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS FluentTemp
(
	ID       Int          NOT NULL,
	"Value"  NVarChar(20)     NULL,
	LastName NVarChar(20)     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName VarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO FluentTemp
(
	ID,
	"Value",
	LastName
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Name VarChar(7) -- String
SET     @Name = 'John II'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'Dory'

UPDATE
	FluentTemp t
SET
	"Value" = @Name,
	LastName = @LastName
WHERE
	t.ID = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS FluentTemp

