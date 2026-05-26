-- Informix.DB2 Informix
DECLARE @Name VarChar(8) -- String
SET     @Name = 'root-ins'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 1
DECLARE @CreatedAt Timestamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @modified Timestamp(16) -- DateTime
SET     @modified = TO_DATE('2026-02-02 09:00:00', '%Y-%m-%d %H:%M:%S')
DECLARE @UpdatedBy VarChar(12) -- String
SET     @UpdatedBy = 'sys-root-ins'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	UpsertTest t1
SET
	Name = @Name::NVarChar(8),
	Version = @Version::Int,
	CreatedAt = @CreatedAt::datetime year to fraction,
	UpdatedAt = @modified::datetime year to fraction,
	UpdatedBy = @UpdatedBy::NVarChar(12)
WHERE
	t1.Id = @Id::Int

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(8) -- String
SET     @Name = 'root-ins'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 1
DECLARE @CreatedAt Timestamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @modified Timestamp(16) -- DateTime
SET     @modified = TO_DATE('2026-02-02 09:00:00', '%Y-%m-%d %H:%M:%S')
DECLARE @UpdatedBy VarChar(12) -- String
SET     @UpdatedBy = 'sys-root-ins'

INSERT INTO UpsertTest
(
	Id,
	Name,
	Version,
	CreatedAt,
	UpdatedAt,
	UpdatedBy
)
VALUES
(
	@Id::Int,
	@Name::NVarChar(8),
	@Version::Int,
	@CreatedAt::datetime year to fraction,
	@modified::datetime year to fraction,
	@UpdatedBy::NVarChar(12)
)

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

-- Informix.DB2 Informix
DECLARE @Name VarChar(8) -- String
SET     @Name = 'root-upd'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 2
DECLARE @CreatedAt Timestamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @modified Timestamp(16) -- DateTime
SET     @modified = TO_DATE('2026-02-02 09:00:00', '%Y-%m-%d %H:%M:%S')
DECLARE @UpdatedBy VarChar(12) -- String
SET     @UpdatedBy = 'sys-root-upd'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	UpsertTest t1
SET
	Name = @Name::NVarChar(8),
	Version = @Version::Int,
	CreatedAt = @CreatedAt::datetime year to fraction,
	UpdatedAt = @modified::datetime year to fraction,
	UpdatedBy = @UpdatedBy::NVarChar(12)
WHERE
	t1.Id = @Id::Int

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

