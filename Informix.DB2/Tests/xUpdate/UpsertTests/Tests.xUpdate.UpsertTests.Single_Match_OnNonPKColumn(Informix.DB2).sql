-- Informix.DB2 Informix

MERGE INTO UpsertTest Target
USING (
	SELECT 'alice'::NVarChar(255) AS Name, 99::Int AS Id, 42::Int AS Version_1, NULL::datetime year to fraction AS CreatedAt, NULL::NVarChar(255) AS CreatedBy, NULL::datetime year to fraction AS UpdatedAt, NULL::NVarChar(255) AS UpdatedBy FROM table(set{1})) Source
(
	Name,
	Id,
	Version_1,
	CreatedAt,
	CreatedBy,
	UpdatedAt,
	UpdatedBy
)
ON (Target.Name = Source.Name OR Target.Name IS NULL AND Source.Name IS NULL)

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
	Version = Source.Version_1,
	CreatedAt = Source.CreatedAt,
	CreatedBy = Source.CreatedBy,
	UpdatedAt = Source.UpdatedAt,
	UpdatedBy = Source.UpdatedBy

-- Informix.DB2 Informix

SELECT FIRST 2
	r.Id,
	r.Name,
	r.Version,
	r.CreatedAt,
	r.CreatedBy,
	r.UpdatedAt,
	r.UpdatedBy
FROM
	UpsertTest r
WHERE
	r.Name = 'alice'

-- Informix.DB2 Informix

SELECT FIRST 2
	r.Id,
	r.Name,
	r.Version,
	r.CreatedAt,
	r.CreatedBy,
	r.UpdatedAt,
	r.UpdatedBy
FROM
	UpsertTest r
WHERE
	r.Name = 'bob'

