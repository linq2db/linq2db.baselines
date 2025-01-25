BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
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
		CREATE TABLE "Src"
		(
			"Int"            Int          NOT NULL,
			"NullableInt"    Int              NULL,
			"String"         VarChar(255)     NULL,
			"NullableString" VarChar(255)     NULL
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
SET     @Int = 2
DECLARE @NullableInt Int32
SET     @NullableInt = 2
DECLARE @String Varchar2(3) -- String
SET     @String = 'abc'
DECLARE @NullableString Varchar2(3) -- String
SET     @NullableString = 'abc'

INSERT INTO "Src"
(
	"Int",
	"NullableInt",
	"String",
	"NullableString"
)
VALUES
(
	:Int,
	:NullableInt,
	:String,
	:NullableString
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Int Int32
SET     @Int = 3
DECLARE @NullableInt Int32
SET     @NullableInt = NULL
DECLARE @String Varchar2(3) -- String
SET     @String = 'def'
DECLARE @NullableString Varchar2 -- String
SET     @NullableString = NULL

INSERT INTO "Src"
(
	"Int",
	"NullableInt",
	"String",
	"NullableString"
)
VALUES
(
	:Int,
	:NullableInt,
	:String,
	:NullableString
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @value Varchar2(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	DECODE(s."String", :value, 0, 1) = 1

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @value Varchar2(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	DECODE(s."NullableString", :value, 0, 1) = 1

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @value Varchar2(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	DECODE(s."String", :value, 0, 1) = 0

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @value Varchar2(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	DECODE(s."NullableString", :value, 0, 1) = 0

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

