-- Informix.DB2 Informix

CREATE TEMP TABLE MergeTemp
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

INSERT INTO MergeTemp
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

UPDATE
	MergeTemp t1
SET
	ID = t1.ID,
	Name = t1.Name
WHERE
	t1.ID = (
		SELECT
			t.ID
		FROM
			MergeTemp t
		WHERE
			t.Name = 'John'
	)

-- Informix.DB2 Informix

DROP TABLE IF EXISTS MergeTemp

