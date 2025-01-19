BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Issue4460Table"
(
	"Id",
	"Code",
	"Name",
	"Surname"
)
VALUES
(1,'GrandChild','Tom','Black')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Code",
	"t1"."Id",
	"t1"."Name",
	"t1"."Surname"
FROM
	"Issue4460Table" "t1"

