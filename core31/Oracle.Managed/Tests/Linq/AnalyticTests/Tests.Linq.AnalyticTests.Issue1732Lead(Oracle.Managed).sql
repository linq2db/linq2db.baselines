BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Position"
(
	"Group" Int NOT NULL,
	"Order" Int NOT NULL,
	"Id"    Int     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "Position" ("Group", "Order", "Id") VALUES (7,10,5)
	INTO "Position" ("Group", "Order", "Id") VALUES (7,20,6)
	INTO "Position" ("Group", "Order", "Id") VALUES (7,30,NULL)
	INTO "Position" ("Group", "Order", "Id") VALUES (7,40,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @group_1 Int32
SET     @group_1 = 7

SELECT
	p."Id",
	LEAD(p."Id", 1, -1) OVER(ORDER BY p."Order")
FROM
	"Position" p
WHERE
	p."Group" = :group_1

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "Position"

