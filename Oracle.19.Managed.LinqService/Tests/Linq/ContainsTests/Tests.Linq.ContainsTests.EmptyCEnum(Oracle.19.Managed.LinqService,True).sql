﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Src"
		(
			"Id"    Int         NOT NULL,
			"Int"   Int             NULL,
			"Enum"  VarChar2(5)     NULL,
			"CEnum" VarChar(20)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Int Int32
SET     @Int = NULL
DECLARE @Enum NVarchar2 -- String
SET     @Enum = NULL
DECLARE @CEnum Varchar2 -- String
SET     @CEnum = NULL

INSERT INTO "Src"
(
	"Id",
	"Int",
	"Enum",
	"CEnum"
)
VALUES
(
	:Id,
	:Int,
	:Enum,
	:CEnum
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Int Int32
SET     @Int = 2
DECLARE @Enum NVarchar2(3) -- String
SET     @Enum = 'TWO'
DECLARE @CEnum Varchar2(12) -- String
SET     @CEnum = '___Value2___'

INSERT INTO "Src"
(
	"Id",
	"Int",
	"Enum",
	"CEnum"
)
VALUES
(
	:Id,
	:Int,
	:Enum,
	:CEnum
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	1 = 0

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" s

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" s

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

