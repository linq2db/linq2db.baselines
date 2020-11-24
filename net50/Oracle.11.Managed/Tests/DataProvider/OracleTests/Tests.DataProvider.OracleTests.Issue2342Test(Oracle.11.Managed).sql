BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "Issue2342Entity"
(
	"Id"   Number(19)   NOT NULL,
	"Name" VarChar(256)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @:p1 Int64
SET     @:p1 = System.Object[]
DECLARE @:p2 Varchar2 -- String
SET     @:p2 = System.Object[]

INSERT INTO "Issue2342Entity" ("Id", "Name") VALUES (:p1, :p2)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

TRUNCATE TABLE "Issue2342Entity"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "Issue2342Entity"

