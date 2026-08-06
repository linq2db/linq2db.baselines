-- Informix.DB2 Informix
DECLARE @Name VarChar(2) -- String
SET     @Name = 'm1'
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
DECLARE @Name VarChar(2) -- String
SET     @Name = 'm1'
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
DECLARE @Name VarChar(2) -- String
SET     @Name = 'm2'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 2
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
SELECT FIRST 2
	t1.Id,
	t1.Name,
	t1.Version,
	t1.CreatedAt,
	t1.CreatedBy,
	t1.UpdatedAt,
	t1.UpdatedBy
FROM
	UpsertTest t1

