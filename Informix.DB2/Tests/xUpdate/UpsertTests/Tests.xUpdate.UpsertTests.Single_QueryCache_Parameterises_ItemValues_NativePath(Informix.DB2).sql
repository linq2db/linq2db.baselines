-- Informix.DB2 Informix
DECLARE @Name VarChar(5) -- String
SET     @Name = 'first'
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
	t1.Id = @Id::Int

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'first'
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
DECLARE @Name VarChar(6) -- String
SET     @Name = 'second'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 20
DECLARE @CreatedAt Timestamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy VarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt Timestamp -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

UPDATE
	UpsertTest t1
SET
	Name = @Name::NVarChar(6),
	Version = @Version::Int,
	CreatedAt = @CreatedAt::datetime year to fraction,
	CreatedBy = @CreatedBy::NVarChar(255),
	UpdatedAt = @UpdatedAt::datetime year to fraction,
	UpdatedBy = @UpdatedBy::NVarChar(255)
WHERE
	t1.Id = @Id::Int

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Name VarChar(6) -- String
SET     @Name = 'second'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 20
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
	@Name::NVarChar(6),
	@Version::Int,
	@CreatedAt::datetime year to fraction,
	@CreatedBy::NVarChar(255),
	@UpdatedAt::datetime year to fraction,
	@UpdatedBy::NVarChar(255)
)

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

