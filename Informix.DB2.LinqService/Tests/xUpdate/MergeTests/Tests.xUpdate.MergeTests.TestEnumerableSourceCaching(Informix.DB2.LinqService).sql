BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS CacheTestTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS CacheTestTable
(
	Id      Int NOT NULL,
	"Value" Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

MERGE INTO CacheTestTable Target
USING (
	SELECT 1::Int AS source_Id, 1::Int AS source_Value FROM table(set{1})
	UNION ALL
	SELECT 2::Int, 2::Int FROM table(set{1})) Source
(
	source_Id,
	source_Value
)
ON (Target.Id = Source.source_Id)

WHEN MATCHED THEN
UPDATE
SET
	"Value" = Source.source_Value

WHEN NOT MATCHED THEN
INSERT
(
	Id,
	"Value"
)
VALUES
(
	Source.source_Id,
	Source.source_Value
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Value"
FROM
	CacheTestTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

MERGE INTO CacheTestTable Target
USING (
	SELECT 1::Int AS source_Id, 1::Int AS source_Value FROM table(set{1})
	UNION ALL
	SELECT 2::Int, 4::Int FROM table(set{1})
	UNION ALL
	SELECT 3::Int, 3::Int FROM table(set{1})) Source
(
	source_Id,
	source_Value
)
ON (Target.Id = Source.source_Id)

WHEN MATCHED THEN
UPDATE
SET
	"Value" = Source.source_Value

WHEN NOT MATCHED THEN
INSERT
(
	Id,
	"Value"
)
VALUES
(
	Source.source_Id,
	Source.source_Value
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Value"
FROM
	CacheTestTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS CacheTestTable

