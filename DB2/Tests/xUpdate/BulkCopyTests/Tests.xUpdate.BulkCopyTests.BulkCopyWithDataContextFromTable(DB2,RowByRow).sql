BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(1)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(2)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(
	@Id
)

