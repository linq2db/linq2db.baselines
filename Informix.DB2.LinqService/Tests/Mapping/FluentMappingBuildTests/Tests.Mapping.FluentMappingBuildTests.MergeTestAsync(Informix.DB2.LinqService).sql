BeforeExecute
-- Informix.DB2 Informix (asynchronously)

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
-- Informix.DB2 Informix (asynchronously)

MERGE INTO FluentTemp Target
USING (
	SELECT 1::Int AS source_ID, 'John II'::NVarChar(20) AS source_Name FROM table(set{1})) Source
(
	source_ID,
	source_Name
)
ON (Target.ID = Source.source_ID)

WHEN MATCHED THEN
UPDATE
SET
	Name = Source.source_Name

WHEN NOT MATCHED THEN
INSERT
(
	ID,
	Name
)
VALUES
(
	Source.source_ID,
	Source.source_Name
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE IF EXISTS FluentTemp

