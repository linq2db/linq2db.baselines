-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

SELECT
	1
FROM
	UpsertTest t1
WHERE
	t1.Id = @Id::Int

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

