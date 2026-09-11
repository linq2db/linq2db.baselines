-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Declared_Elapsed BigInt(8) -- Int64
SET     @Declared_Elapsed = 5400
DECLARE @Converted_Elapsed BigInt(8) -- Int64
SET     @Converted_Elapsed = 5400

INSERT INTO NestedDurationRow
(
	Id,
	Declared,
	Converted
)
VALUES
(
	@Id,
	@Declared_Elapsed,
	@Converted_Elapsed
)

-- Informix.DB2 Informix
SELECT FIRST 2
	t1.Id,
	t1.Declared,
	t1.Converted
FROM
	NestedDurationRow t1

-- Informix.DB2 Informix
SELECT FIRST 2
	r.Declared::Float / 60
FROM
	NestedDurationRow r

