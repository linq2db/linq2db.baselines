-- Informix.DB2 Informix
DECLARE @Version Integer(4) -- Int32
SET     @Version = 99
DECLARE @UpdatedAt Timestamp -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	EntityUpdateTest t
SET
	Version = @Version::Int,
	UpdatedAt = @UpdatedAt::datetime year to fraction,
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

