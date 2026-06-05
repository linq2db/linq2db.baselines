-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

SELECT
	1
FROM
	UpsertTest t1
WHERE
	t1.Id = @Id::Int

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

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

SELECT
	1
FROM
	UpsertTest t1
WHERE
	t1.Id = @Id::Int

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Name VarChar(5) -- String
SET     @Name = 'fresh'
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
	@Id::Int,
	@Name::NVarChar(5),
	@Version::Int,
	@CreatedAt::datetime year to fraction,
	@CreatedBy::NVarChar(255),
	@UpdatedAt::datetime year to fraction,
	@UpdatedBy::NVarChar(255)
)

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	UpsertTest t1

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
	r.Id = 2

