-- Informix.DB2 Informix
DECLARE @Name VarChar(5) -- String
SET     @Name = 'alice'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 1
DECLARE @UpdatedAt Timestamp -- DateTime
SET     @UpdatedAt = NULL
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	EntityUpdateTest t
SET
	Name = @Name::NVarChar(5),
	Version = @Version::Int,
	UpdatedAt = @UpdatedAt::datetime year to fraction,
	UpdatedBy = @Name::NVarChar(5)
WHERE
	t.Id = @Id

-- Informix.DB2 Informix

SELECT FIRST 2
	t1.Id,
	t1.Name,
	t1.Version,
	t1.UpdatedAt,
	t1.UpdatedBy
FROM
	EntityUpdateTest t1

