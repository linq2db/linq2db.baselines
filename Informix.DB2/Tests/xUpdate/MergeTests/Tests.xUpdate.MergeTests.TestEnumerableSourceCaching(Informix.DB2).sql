-- Informix.DB2 Informix

MERGE INTO CacheTestTable Target
USING (
	SELECT 1::Int AS Id, 1::Int AS Value_1 FROM table(set{1})
	UNION ALL
	SELECT 2::Int, 2::Int FROM table(set{1})) Source
(
	Id,
	Value_1
)
ON (Target.Id = Source.Id)

WHEN MATCHED THEN
UPDATE
SET
	"Value" = Source.Value_1

WHEN NOT MATCHED THEN
INSERT
(
	Id,
	"Value"
)
VALUES
(
	Source.Id,
	Source.Value_1
)

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Value"
FROM
	CacheTestTable t1
ORDER BY
	t1.Id

-- Informix.DB2 Informix

MERGE INTO CacheTestTable Target
USING (
	SELECT 1::Int AS Id, 1::Int AS Value_1 FROM table(set{1})
	UNION ALL
	SELECT 2::Int, 4::Int FROM table(set{1})
	UNION ALL
	SELECT 3::Int, 3::Int FROM table(set{1})) Source
(
	Id,
	Value_1
)
ON (Target.Id = Source.Id)

WHEN MATCHED THEN
UPDATE
SET
	"Value" = Source.Value_1

WHEN NOT MATCHED THEN
INSERT
(
	Id,
	"Value"
)
VALUES
(
	Source.Id,
	Source.Value_1
)

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Value"
FROM
	CacheTestTable t1
ORDER BY
	t1.Id

