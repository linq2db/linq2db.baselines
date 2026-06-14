-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(1) -- String
SET     @Name = 'n'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 101
DECLARE @stamp Timestamp(16) -- DateTime
SET     @stamp = TO_DATE('2026-06-01', '%Y-%m-%d')

INSERT INTO EntityInsertTest
(
	Id,
	Name,
	Version,
	CreatedAt
)
VALUES
(
	@Id::Int,
	@Name::NVarChar(1),
	@Version::Int,
	@stamp::datetime year to fraction
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

