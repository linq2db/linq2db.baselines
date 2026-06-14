-- Informix.DB2 Informix
DECLARE @Name VarChar(3) -- String
SET     @Name = 'row'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 1
DECLARE @CreatedAt Timestamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @UpdatedAt Timestamp -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	UpsertTest t1
SET
	Name = @Name::NVarChar(3),
	Version = @Version::Int,
	CreatedAt = @CreatedAt::datetime year to fraction,
	CreatedBy = 'second-root',
	UpdatedAt = @UpdatedAt::datetime year to fraction,
	UpdatedBy = @UpdatedBy::NVarChar(255)
WHERE
	t1.Id = @Id::Int

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(3) -- String
SET     @Name = 'row'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 1
DECLARE @CreatedAt Timestamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @UpdatedAt Timestamp -- DateTime
SET     @UpdatedAt = NULL

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
	@Name::NVarChar(3),
	@Version::Int,
	@CreatedAt::datetime year to fraction,
	'second-root',
	@UpdatedAt::datetime year to fraction,
	'second-branch'
)

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

