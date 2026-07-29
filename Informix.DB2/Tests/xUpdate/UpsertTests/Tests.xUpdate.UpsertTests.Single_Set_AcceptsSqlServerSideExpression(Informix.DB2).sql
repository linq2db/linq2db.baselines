-- Informix.DB2 Informix
DECLARE @Name VarChar(6) -- String
SET     @Name = 'ts-ins'
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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	UpsertTest t1
SET
	Name = @Name,
	Version = @Version,
	CreatedAt = @CreatedAt,
	CreatedBy = @CreatedBy,
	UpdatedAt = @UpdatedAt,
	UpdatedBy = @UpdatedBy
WHERE
	t1.Id = @Id

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(6) -- String
SET     @Name = 'ts-ins'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 1
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
	CURRENT,
	@CreatedBy,
	@UpdatedAt,
	@UpdatedBy
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

-- Informix.DB2 Informix
DECLARE @Name VarChar(6) -- String
SET     @Name = 'ts-upd'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 2
DECLARE @CreatedAt Timestamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy VarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	UpsertTest t1
SET
	Name = @Name,
	Version = @Version,
	CreatedAt = @CreatedAt,
	CreatedBy = @CreatedBy,
	UpdatedAt = CURRENT,
	UpdatedBy = @UpdatedBy
WHERE
	t1.Id = @Id

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
DECLARE @Name VarChar(7) -- String
SET     @Name = 'root-ts'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 1
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
	Name = @Name,
	Version = @Version,
	CreatedAt = CURRENT,
	CreatedBy = @CreatedBy,
	UpdatedAt = @UpdatedAt,
	UpdatedBy = @UpdatedBy
WHERE
	t1.Id = @Id

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Name VarChar(7) -- String
SET     @Name = 'root-ts'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 1
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
	CURRENT,
	@CreatedBy,
	@UpdatedAt,
	@UpdatedBy
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
	r.Id = 2

