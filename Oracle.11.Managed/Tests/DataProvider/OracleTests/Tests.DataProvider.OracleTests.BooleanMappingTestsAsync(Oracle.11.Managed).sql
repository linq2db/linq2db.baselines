BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

INSERT ALL
	INTO "BooleanMapping" ("Id", "BoolProp", "NullableBoolProp") VALUES (1,1,'Y')
	INTO "BooleanMapping" ("Id", "BoolProp", "NullableBoolProp") VALUES (2,0,'N')
	INTO "BooleanMapping" ("Id", "BoolProp", "NullableBoolProp") VALUES (3,1,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."BoolProp",
	t1."NullableBoolProp"
FROM
	"BooleanMapping" t1

