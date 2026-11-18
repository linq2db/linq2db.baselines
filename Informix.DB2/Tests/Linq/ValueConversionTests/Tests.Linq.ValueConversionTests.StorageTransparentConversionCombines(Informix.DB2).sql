-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Marked Integer(4) -- Int32
SET     @Marked = 5
DECLARE @Plain Integer(4) -- Int32
SET     @Plain = 5

INSERT INTO StorageTransparentRow
(
	Id,
	Marked,
	Plain
)
VALUES
(
	@Id,
	@Marked,
	@Plain
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Marked Integer(4) -- Int32
SET     @Marked = 6
DECLARE @Plain Integer(4) -- Int32
SET     @Plain = 7

INSERT INTO StorageTransparentRow
(
	Id,
	Marked,
	Plain
)
VALUES
(
	@Id,
	@Marked,
	@Plain
)

-- Informix.DB2 Informix
SELECT
	r.Id
FROM
	StorageTransparentRow r
WHERE
	r.Marked = r.Plain

-- Informix.DB2 Informix
SELECT
	r.Marked + r.Plain
FROM
	StorageTransparentRow r
ORDER BY
	r.Id

