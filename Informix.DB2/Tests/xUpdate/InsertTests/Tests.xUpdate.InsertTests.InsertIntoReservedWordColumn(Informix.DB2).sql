-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10
DECLARE @TimeStamp Timestamp(16) -- DateTime
SET     @TimeStamp = TO_DATE('2020-02-29 17:54:55.12312', '%Y-%m-%d %H:%M:%S.%F5')

INSERT INTO ReservedWordColumn
(
	Id,
	"TimeStamp"
)
VALUES
(
	@Id,
	@TimeStamp
)

