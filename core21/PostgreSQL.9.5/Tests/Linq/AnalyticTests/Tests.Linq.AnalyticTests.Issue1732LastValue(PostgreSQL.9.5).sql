BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Position"
(
	"Group" Int NOT NULL,
	"Order" Int NOT NULL,
	"Id"    Int     NULL
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

INSERT INTO "Position"
(
	"Group",
	"Order",
	"Id"
)
VALUES
(7,10,5),
(7,20,6),
(7,30,NULL),
(7,40,NULL)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @group_1 Integer -- Int32
SET     @group_1 = 7

SELECT 
	p."Id", 
	LAST_VALUE(p."Id") OVER(ORDER BY p."Order")
FROM
	"Position" p
WHERE
	p."Group" = :group_1

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DROP TABLE "Position"

