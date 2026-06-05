-- Informix.DB2 Informix

MERGE INTO UpsertTest Target
USING (
	SELECT 1::Int AS Id, 'one'::NVarChar(255) AS Name, 2::Int AS Version_1, NULL::datetime year to fraction AS CreatedAt, NULL::NVarChar(255) AS CreatedBy, NULL::datetime year to fraction AS UpdatedAt, NULL::NVarChar(255) AS UpdatedBy FROM table(set{1})
	UNION ALL
	SELECT 2::Int, 'two'::NVarChar(255), 1::Int, NULL::datetime year to fraction, NULL::NVarChar(255), NULL::datetime year to fraction, NULL::NVarChar(255) FROM table(set{1})) Source
(
	Id,
	Name,
	Version_1,
	CreatedAt,
	CreatedBy,
	UpdatedAt,
	UpdatedBy
)
ON (Target.Id = Source.Id)

WHEN NOT MATCHED THEN
INSERT
(
	Id,
	Name,
	Version,
	CreatedAt,
	CreatedBy,
	UpdatedAt,
	UpdatedBy
)
VALUES
(
	Source.Id,
	Source.Name,
	Source.Version_1,
	Source.CreatedAt,
	Source.CreatedBy,
	Source.UpdatedAt,
	Source.UpdatedBy
)

WHEN MATCHED THEN
UPDATE
SET
	Name = Source.Name,
	Version = Source.Version_1,
	CreatedAt = Source.CreatedAt,
	CreatedBy = Source.CreatedBy,
	UpdatedAt = Source.UpdatedAt,
	UpdatedBy = Source.UpdatedBy

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Name,
	t1.Version,
	t1.CreatedAt,
	t1.CreatedBy,
	t1.UpdatedAt,
	t1.UpdatedBy
FROM
	UpsertTest t1
ORDER BY
	t1.Id

