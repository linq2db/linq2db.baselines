-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "BooleanMapping" ("Id", "BoolProp", "NullableBoolProp") VALUES (1,1,'Y')
	INTO "BooleanMapping" ("Id", "BoolProp", "NullableBoolProp") VALUES (2,0,'N')
	INTO "BooleanMapping" ("Id", "BoolProp", "NullableBoolProp") VALUES (3,1,NULL)
SELECT * FROM dual

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."BoolProp",
	t1."NullableBoolProp"
FROM
	"BooleanMapping" t1

