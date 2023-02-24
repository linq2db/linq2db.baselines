BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Position"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Position"
		(
			"Group" Int NOT NULL,
			"Order" Int NOT NULL,
			"Id"    Int     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "Position" ("Group", "Order", "Id") VALUES (7,10,5)
	INTO "Position" ("Group", "Order", "Id") VALUES (7,20,6)
	INTO "Position" ("Group", "Order", "Id") VALUES (7,30,NULL)
	INTO "Position" ("Group", "Order", "Id") VALUES (7,40,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @group_1 Int32
SET     @group_1 = 7

SELECT
	p."Id",
	FIRST_VALUE(p."Id") OVER(ORDER BY p."Order" DESC),
	FIRST_VALUE(p."Id" IGNORE NULLS) OVER(ORDER BY p."Order" DESC),
	LAST_VALUE(p."Id") OVER(ORDER BY p."Order"),
	LAST_VALUE(p."Id" IGNORE NULLS) OVER(ORDER BY p."Order")
FROM
	"Position" p
WHERE
	p."Group" = :group_1

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Position"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

