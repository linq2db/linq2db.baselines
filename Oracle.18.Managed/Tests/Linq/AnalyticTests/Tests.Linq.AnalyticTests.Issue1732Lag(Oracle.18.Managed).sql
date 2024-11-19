BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Position"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

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
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Position" ("Group", "Order", "Id") VALUES (7,10,5)
	INTO "Position" ("Group", "Order", "Id") VALUES (7,20,6)
	INTO "Position" ("Group", "Order", "Id") VALUES (7,30,NULL)
	INTO "Position" ("Group", "Order", "Id") VALUES (7,40,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @group_1 Int32
SET     @group_1 = 7

SELECT
	p_1."Id",
	LAG(p_1."Id", 1, -1) OVER(ORDER BY p_1."Order_1")
FROM
	(
		SELECT
			p."Id",
			p."Order" as "Order_1"
		FROM
			"Position" p
		WHERE
			p."Group" = :group_1
	) p_1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Position"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

