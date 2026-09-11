-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Key Integer(4) -- Int32
SET     @Key = 7

INSERT INTO PrivateDuRow
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
SELECT
	x."Key"
FROM
	PrivateDuRow x
ORDER BY
	x.Id

