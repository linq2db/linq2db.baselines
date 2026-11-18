-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = 5
DECLARE @Value VarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO ConcurrencyRefreshNoLock
(
	Id,
	Stamp,
	"Value"
)
VALUES
(
	@Id,
	@Stamp,
	@Value
)

-- Informix.DB2 Informix
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = 5
DECLARE @Value VarChar(7) -- String
SET     @Value = 'updated'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	ConcurrencyRefreshNoLock obj
SET
	Stamp = @Stamp,
	"Value" = @Value
WHERE
	obj.Id = @Id

-- Informix.DB2 Informix
SELECT FIRST 2
	r.Id,
	r.Stamp,
	r."Value"
FROM
	ConcurrencyRefreshNoLock r
WHERE
	r.Id = 1

