-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = 5
DECLARE @Value VarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO ConcurrencyRefreshAutoInc
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
DECLARE @Value VarChar(7) -- String
SET     @Value = 'updated'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = 5

UPDATE
	ConcurrencyRefreshAutoInc obj
SET
	Stamp = obj.Stamp + 1,
	"Value" = @Value::NVarChar(7)
WHERE
	obj.Id = @Id AND obj.Stamp = @Stamp

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

SELECT FIRST 1
	obj.Stamp
FROM
	ConcurrencyRefreshAutoInc obj
WHERE
	obj.Id = @Id

-- Informix.DB2 Informix
SELECT FIRST 2
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyRefreshAutoInc t1

