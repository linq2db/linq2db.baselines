-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Elapsed BigInt(8) -- Int64
SET     @Elapsed = 5400

INSERT INTO DynamicDurationRow
(
	Id,
	Elapsed
)
VALUES
(
	@Id,
	@Elapsed
)

-- Informix.DB2 Informix
SELECT FIRST 2
	t1.Id,
	t1.Elapsed
FROM
	DynamicDurationRow t1

-- Informix.DB2 Informix
SELECT FIRST 2
	r.Elapsed::Float / 60
FROM
	DynamicDurationRow r

