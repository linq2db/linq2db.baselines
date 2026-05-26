-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(2) -- String
SET     @Name = 'n1'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 7
DECLARE @CreatedAt Timestamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy VarChar(2) -- String
SET     @CreatedBy = 'u1'

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
	@Name::NVarChar(2),
	@Version::Int,
	@CreatedAt::datetime year to fraction,
	@CreatedBy::NVarChar(2)
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

