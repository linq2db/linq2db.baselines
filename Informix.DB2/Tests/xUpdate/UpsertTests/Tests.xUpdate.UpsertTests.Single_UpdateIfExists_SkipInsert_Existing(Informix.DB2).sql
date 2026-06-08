-- Informix.DB2 Informix

MERGE INTO UpsertTest Target
USING (
	SELECT 1::Int AS Id, 'updated'::NVarChar(255) AS Name, 2::Int AS Version_1, NULL::datetime year to fraction AS CreatedAt, NULL::NVarChar(255) AS CreatedBy, NULL::datetime year to fraction AS UpdatedAt, NULL::NVarChar(255) AS UpdatedBy FROM table(set{1})) Source
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
	r.Id = 1

