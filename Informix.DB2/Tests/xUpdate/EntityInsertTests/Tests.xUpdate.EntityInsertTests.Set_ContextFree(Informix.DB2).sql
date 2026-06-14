-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(1) -- String
SET     @Name = 'n'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 1
DECLARE @stamp Timestamp(16) -- DateTime
SET     @stamp = TO_DATE('2026-01-01 10:00:00', '%Y-%m-%d %H:%M:%S')
DECLARE @CreatedBy VarChar -- String
SET     @CreatedBy = NULL

INSERT INTO EntityInsertTest
(
	Id,
	Name,
	Version,
	CreatedAt,
	CreatedBy
)
VALUES
(
	@Id::Int,
	@Name::NVarChar(1),
	@Version::Int,
	@stamp::datetime year to fraction,
	@CreatedBy::NVarChar(255)
)

-- Informix.DB2 Informix

SELECT FIRST 2
	t1.Id,
	t1.Name,
	t1.Version,
	t1.CreatedAt,
	t1.CreatedBy
FROM
	EntityInsertTest t1

