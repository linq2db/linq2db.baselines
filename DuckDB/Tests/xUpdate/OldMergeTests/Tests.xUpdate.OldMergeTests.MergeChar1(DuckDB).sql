-- DuckDB

INSERT INTO AllTypes
(
	charDataType,
	ncharDataType
)
VALUES
(
	chr(0),
	chr(0)
)
RETURNING 
	ID

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 3

SELECT
	t.ID,
	t.charDataType,
	t.ncharDataType
FROM
	AllTypes t
WHERE
	t.ID = $id

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 3

MERGE INTO AllTypes Target
USING (
	SELECT
		t.ID,
		t.charDataType,
		t.ncharDataType
	FROM
		AllTypes t
	WHERE
		t.ID = $id
) Source
(
	ID,
	charDataType,
	ncharDataType
)
ON (Target.ID = Source.ID)

WHEN MATCHED THEN
UPDATE
SET
	charDataType = Source.charDataType,
	ncharDataType = Source.ncharDataType

WHEN NOT MATCHED THEN
INSERT
(
	charDataType,
	ncharDataType
)
VALUES
(
	Source.charDataType,
	Source.ncharDataType
)

