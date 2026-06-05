-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'async'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 3
DECLARE @CreatedAt Timestamp -- DateTime
SET     @CreatedAt = NULL
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
	@Name::NVarChar(5),
	@Version::Int,
	@CreatedAt::datetime year to fraction,
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

