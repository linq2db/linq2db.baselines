BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Mixed"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Mixed"
		(
			"Int"    Int          NOT NULL,
			"Str"    VarChar(255)     NULL,
			"Date"   timestamp    NOT NULL,
			"Double" Float        NOT NULL,
			"Bool"   Char(1)      NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Int Int32
SET     @Int = 1
DECLARE @Str Varchar2(3) -- String
SET     @Str = 'One'
DECLARE @Date_1 TimeStamp -- DateTime
SET     @Date_1 = TIMESTAMP '2001-01-01 00:00:00.000000'
DECLARE @Double BinaryDouble -- Double
SET     @Double = 1D
DECLARE @Bool Int16
SET     @Bool = 1

INSERT INTO "Mixed"
(
	"Int",
	"Str",
	"Date",
	"Double",
	"Bool"
)
VALUES
(
	:Int,
	:Str,
	:Date_1,
	:Double,
	:Bool
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Int Int32
SET     @Int = 2
DECLARE @Str Varchar2(3) -- String
SET     @Str = 'Two'
DECLARE @Date_1 TimeStamp -- DateTime
SET     @Date_1 = TIMESTAMP '2002-02-02 00:00:00.000000'
DECLARE @Double BinaryDouble -- Double
SET     @Double = 2D
DECLARE @Bool Int16
SET     @Bool = 0

INSERT INTO "Mixed"
(
	"Int",
	"Str",
	"Date",
	"Double",
	"Bool"
)
VALUES
(
	:Int,
	:Str,
	:Date_1,
	:Double,
	:Bool
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Mixed" t
WHERE
	t."Int" > 0 AND (t."Str", t."Double", t."Bool") = (('One', 1D, 1)) AND
	EXISTS(
		SELECT
			*
		FROM
			"Mixed" u
		WHERE
			(2 > u."Int" OR 2 = u."Int" AND u."Date" > t."Date")
	)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Mixed"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

