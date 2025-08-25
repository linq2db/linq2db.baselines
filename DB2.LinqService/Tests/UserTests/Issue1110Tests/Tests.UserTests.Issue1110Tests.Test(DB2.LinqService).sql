BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10
DECLARE @TimeStamp Timestamp(20) -- DateTime
SET     @TimeStamp = '2020-02-29-17.54.55.123123'

INSERT INTO "Issue1110TB"
(
	"Id",
	"TimeStamp"
)
VALUES
(
	@Id,
	@TimeStamp
)

