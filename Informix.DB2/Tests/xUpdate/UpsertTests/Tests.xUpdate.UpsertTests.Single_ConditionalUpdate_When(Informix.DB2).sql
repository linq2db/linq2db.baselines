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
DECLARE @Name VarChar(5) -- String
SET     @Name = 'stale'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 3
DECLARE @CreatedAt Timestamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy VarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt Timestamp -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	UpsertTest t1
SET
	Name = @Name::NVarChar(5),
	Version = @Version::Int,
	CreatedAt = @CreatedAt::datetime year to fraction,
	CreatedBy = @CreatedBy::NVarChar(255),
	UpdatedAt = @UpdatedAt::datetime year to fraction,
	UpdatedBy = @UpdatedBy::NVarChar(255)
WHERE
	t1.Id = @Id::Int AND @Version::Int > t1.Version

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
SET     @Id = 1

SELECT
	1
FROM
	UpsertTest t1
WHERE
	t1.Id = @Id::Int

-- Informix.DB2 Informix
DECLARE @Name VarChar(5) -- String
SET     @Name = 'fresh'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 10
DECLARE @CreatedAt Timestamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy VarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt Timestamp -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	UpsertTest t1
SET
	Name = @Name::NVarChar(5),
	Version = @Version::Int,
	CreatedAt = @CreatedAt::datetime year to fraction,
	CreatedBy = @CreatedBy::NVarChar(255),
	UpdatedAt = @UpdatedAt::datetime year to fraction,
	UpdatedBy = @UpdatedBy::NVarChar(255)
WHERE
	t1.Id = @Id::Int AND @Version::Int > t1.Version

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

