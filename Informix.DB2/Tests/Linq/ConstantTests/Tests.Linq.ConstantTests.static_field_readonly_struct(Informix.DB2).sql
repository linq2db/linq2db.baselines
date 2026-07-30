-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @InnerNonReadonlyStructure Integer(4) -- Int32
SET     @InnerNonReadonlyStructure = 2

SELECT
	e.Id,
	e.GuidValue,
	e.GuidNullableValue,
	e.StringValue
FROM
	TestConstantsData e
WHERE
	e.Id = @Id AND e.Id = @InnerNonReadonlyStructure

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.GuidValue,
	t1.GuidNullableValue,
	t1.StringValue
FROM
	TestConstantsData t1

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @InnerNonReadonlyStructure Integer(4) -- Int32
SET     @InnerNonReadonlyStructure = 2

SELECT
	e.Id,
	e.GuidValue,
	e.GuidNullableValue,
	e.StringValue
FROM
	TestConstantsData e
WHERE
	e.Id = @Id AND e.Id = @InnerNonReadonlyStructure

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.GuidValue,
	t1.GuidNullableValue,
	t1.StringValue
FROM
	TestConstantsData t1

