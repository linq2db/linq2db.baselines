-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Key Integer(4) -- Int32
SET     @Key = 10

INSERT INTO StructDuRow
(
	Id,
	"Key"
)
VALUES
(
	@Id,
	@Key
)

-- Informix.DB2 Informix
DECLARE @Oid Integer(4) -- Int32
SET     @Oid = 1
DECLARE @RefId Integer(4) -- Int32
SET     @RefId = 1

INSERT INTO DuOuter
(
	Oid,
	RefId
)
VALUES
(
	@Oid,
	@RefId
)

-- Informix.DB2 Informix
DECLARE @Oid Integer(4) -- Int32
SET     @Oid = 2
DECLARE @RefId Integer(4) -- Int32
SET     @RefId = 99

INSERT INTO DuOuter
(
	Oid,
	RefId
)
VALUES
(
	@Oid,
	@RefId
)

-- Informix.DB2 Informix
SELECT
	arg2."Key"
FROM
	DuOuter tupledArg
		LEFT JOIN StructDuRow arg2 ON tupledArg.RefId = arg2.Id
ORDER BY
	tupledArg.Oid

