BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "BooleanMapping"
(
	"Id"               Int     NOT NULL,
	"BoolProp"         Char(1) NOT NULL,
	"NullableBoolProp" Char(1)     NULL,

	CONSTRAINT "PK_BooleanMapping" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "BooleanMapping" ("Id", "BoolProp", "NullableBoolProp") VALUES (1,1,'Y')
	INTO "BooleanMapping" ("Id", "BoolProp", "NullableBoolProp") VALUES (2,0,'N')
	INTO "BooleanMapping" ("Id", "BoolProp", "NullableBoolProp") VALUES (3,1,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."BoolProp",
	t1."NullableBoolProp"
FROM
	"BooleanMapping" t1

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "BooleanMapping"

