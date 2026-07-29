-- Informix.DB2 Informix
DECLARE @Name VarChar(5) -- String
SET     @Name = 'first'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 1
DECLARE @updateTime Timestamp(16) -- DateTime
SET     @updateTime = TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%M:%S')
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	UpsertTest t1
SET
	Name = @Name,
	Version = @Version,
	UpdatedAt = @updateTime,
	UpdatedBy = 'system'
WHERE
	t1.Id = @Id

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'first'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 1
DECLARE @insertTime Timestamp(16) -- DateTime
SET     @insertTime = TO_DATE('2026-01-01 10:00:00', '%Y-%m-%d %H:%M:%S')

INSERT INTO UpsertTest
(
	Id,
	Name,
	Version,
	CreatedAt,
	CreatedBy
)
VALUES
(
	@Id,
	@Name,
	@Version,
	@insertTime,
	'system'
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
SET     @Name = 'second'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 2
DECLARE @updateTime Timestamp(16) -- DateTime
SET     @updateTime = TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%M:%S')
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	UpsertTest t1
SET
	Name = @Name,
	Version = @Version,
	UpdatedAt = @updateTime,
	UpdatedBy = 'system'
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

