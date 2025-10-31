-- Informix.DB2 Informix

DROP TABLE IF EXISTS FluentTemp

-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS FluentTemp
(
	ID   Int          NOT NULL,
	Name NVarChar(20)     NULL,

	PRIMARY KEY (ID)
)

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

-- Informix.DB2 Informix

MERGE INTO FluentTemp Target
USING (
	SELECT 1::Int AS ID, 'John II'::NVarChar(20) AS Name FROM table(set{1})) Source
(
	ID,
	Name
)
ON (Target.ID = Source.ID)

WHEN MATCHED THEN
UPDATE
SET
	Name = Source.Name

WHEN NOT MATCHED THEN
INSERT
(
	ID,
	Name
)
VALUES
(
	Source.ID,
	Source.Name
)

-- Informix.DB2 Informix

DROP TABLE IF EXISTS FluentTemp

