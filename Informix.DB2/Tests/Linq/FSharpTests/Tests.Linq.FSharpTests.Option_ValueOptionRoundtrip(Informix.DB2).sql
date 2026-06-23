-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @IntValue Integer(4) -- Int32
SET     @IntValue = 42
DECLARE @StrValue VarChar(5) -- String
SET     @StrValue = 'hello'

INSERT INTO VOptionTable
(
	Id,
	IntValue,
	StrValue
)
VALUES
(
	@Id,
	@IntValue,
	@StrValue
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @StrValue VarChar -- String
SET     @StrValue = NULL

INSERT INTO VOptionTable
(
	Id,
	IntValue,
	StrValue
)
VALUES
(
	@Id,
	@IntValue,
	@StrValue
)

-- Informix.DB2 Informix

SELECT FIRST 2
	r.Id,
	r.IntValue,
	r.StrValue
FROM
	VOptionTable r
WHERE
	r.Id = 1

-- Informix.DB2 Informix

SELECT FIRST 2
	r.Id,
	r.IntValue,
	r.StrValue
FROM
	VOptionTable r
WHERE
	r.Id = 2

