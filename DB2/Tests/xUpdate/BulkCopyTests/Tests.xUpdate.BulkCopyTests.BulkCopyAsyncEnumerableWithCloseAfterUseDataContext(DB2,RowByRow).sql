-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(
	@Id
)

