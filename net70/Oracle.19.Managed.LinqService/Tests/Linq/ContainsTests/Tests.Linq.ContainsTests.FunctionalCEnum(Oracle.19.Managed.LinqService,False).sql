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

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Src"
		(
			"Id"    Int         NOT NULL,
			"Int"   Int             NULL,
			"Enum"  VarChar(5)      NULL,
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
DECLARE @Int_1 Int32
SET     @Int_1 = NULL
DECLARE @Enum Varchar2 -- String
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
	:Int_1,
	:Enum,
	:CEnum
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Int_1 Int32
SET     @Int_1 = 2
DECLARE @Enum Varchar2(3) -- String
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
	:Int_1,
	:Enum,
	:CEnum
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @CEnum Varchar2(12) -- String
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 Varchar2(12) -- String
SET     @CEnum_1 = '___Value4___'
DECLARE @take Int32
SET     @take = 1

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."CEnum" IN (:CEnum, :CEnum_1)
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @CEnum Varchar2(12) -- String
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 Varchar2 -- String
SET     @CEnum_1 = NULL
DECLARE @take Int32
SET     @take = 1

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."CEnum" IN (:CEnum, :CEnum_1)
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @CEnum Varchar2(12) -- String
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 Varchar2(12) -- String
SET     @CEnum_1 = '___Value2___'
DECLARE @take Int32
SET     @take = 1

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."CEnum" IN (:CEnum, :CEnum_1)
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @CEnum Varchar2 -- String
SET     @CEnum = NULL
DECLARE @CEnum_1 Varchar2(12) -- String
SET     @CEnum_1 = '___Value2___'
DECLARE @take Int32
SET     @take = 1

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."CEnum" NOT IN (:CEnum, :CEnum_1)
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @CEnum Varchar2(12) -- String
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 Varchar2(12) -- String
SET     @CEnum_1 = '___Value2___'
DECLARE @take Int32
SET     @take = 1

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."CEnum" NOT IN (:CEnum, :CEnum_1)
FETCH NEXT :take ROWS ONLY

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

