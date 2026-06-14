-- Informix.DB2 Informix
DECLARE @Name VarChar(1) -- String
SET     @Name = 'x'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 5
DECLARE @stamp Timestamp(16) -- DateTime
SET     @stamp = TO_DATE('2026-06-01', '%Y-%m-%d')
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	EntityUpdateTest t
SET
	Name = @Name::NVarChar(1),
	Version = @Version::Int,
	UpdatedAt = @stamp::datetime year to fraction,
	UpdatedBy = @UpdatedBy::NVarChar(255)
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

