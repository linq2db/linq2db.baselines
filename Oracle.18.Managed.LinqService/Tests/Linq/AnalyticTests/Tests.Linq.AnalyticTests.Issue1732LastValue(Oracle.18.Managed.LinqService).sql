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
DECLARE @Group_1 Int32
SET     @Group_1 = 7
DECLARE @Order_1 Int32
SET     @Order_1 = 10
DECLARE @Id Int32
SET     @Id = 5

INSERT INTO "Position"
(
	"Group",
	"Order",
	"Id"
)
VALUES
(
	:Group_1,
	:Order_1,
	:Id
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Group_1 Int32
SET     @Group_1 = 7
DECLARE @Order_1 Int32
SET     @Order_1 = 20
DECLARE @Id Int32
SET     @Id = 6

INSERT INTO "Position"
(
	"Group",
	"Order",
	"Id"
)
VALUES
(
	:Group_1,
	:Order_1,
	:Id
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Group_1 Int32
SET     @Group_1 = 7
DECLARE @Order_1 Int32
SET     @Order_1 = 30
DECLARE @Id Int32
SET     @Id = NULL

INSERT INTO "Position"
(
	"Group",
	"Order",
	"Id"
)
VALUES
(
	:Group_1,
	:Order_1,
	:Id
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Group_1 Int32
SET     @Group_1 = 7
DECLARE @Order_1 Int32
SET     @Order_1 = 40
DECLARE @Id Int32
SET     @Id = NULL

INSERT INTO "Position"
(
	"Group",
	"Order",
	"Id"
)
VALUES
(
	:Group_1,
	:Order_1,
	:Id
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @group_1 Int32
SET     @group_1 = 7

SELECT
	p_1."Id",
	LAST_VALUE(p_1."Id") OVER(ORDER BY p_1."Order_1")
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

