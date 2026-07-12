-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Key Integer(4) -- Int32
SET     @Key = 10

INSERT INTO DuRow
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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Key Integer(4) -- Int32
SET     @Key = 20

INSERT INTO DuRow
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
DECLARE @Key Integer(4) -- Int32
SET     @Key = 10

SELECT
	x.Id,
	x."Key"
FROM
	DuRow x
WHERE
	x."Key" = @Key

