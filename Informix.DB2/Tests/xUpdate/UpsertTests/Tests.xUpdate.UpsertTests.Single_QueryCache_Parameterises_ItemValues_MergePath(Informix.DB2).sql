-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 42
DECLARE @Name VarChar(4) -- String
SET     @Name = 'seed'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 1
DECLARE @CreatedAt Timestamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy VarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt Timestamp -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL

INSERT INTO UpsertTest
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
	@Id,
	@Name,
	@Version,
	@CreatedAt,
	@CreatedBy,
	@UpdatedAt,
	@UpdatedBy
)

-- Informix.DB2 Informix

MERGE INTO UpsertTest Target
USING (
	SELECT 42::Int AS Id, 'first-update'::NVarChar(255) AS Name, 50::Int AS Version_1, NULL::datetime year to fraction AS CreatedAt, NULL::NVarChar(255) AS CreatedBy, NULL::datetime year to fraction AS UpdatedAt, NULL::NVarChar(255) AS UpdatedBy FROM table(set{1})) Source
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

MERGE INTO UpsertTest Target
USING (
	SELECT 42::Int AS Id, 'second-update'::NVarChar(255) AS Name, 99::Int AS Version_1, NULL::datetime year to fraction AS CreatedAt, NULL::NVarChar(255) AS CreatedBy, NULL::datetime year to fraction AS UpdatedAt, NULL::NVarChar(255) AS UpdatedBy FROM table(set{1})) Source
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
	r.Id = 42

