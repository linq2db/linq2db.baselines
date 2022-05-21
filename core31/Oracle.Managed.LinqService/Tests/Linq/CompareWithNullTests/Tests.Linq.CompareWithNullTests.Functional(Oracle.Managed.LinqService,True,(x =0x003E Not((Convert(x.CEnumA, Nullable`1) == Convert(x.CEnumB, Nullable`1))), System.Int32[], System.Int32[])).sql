BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Src"
		(
			"Id"     Int           NOT NULL,
			A        Int               NULL,
			B        Int               NULL,
			"EnumA"  VarChar(1)        NULL,
			"EnumB"  VarChar(1)        NULL,
			"CEnumA" VarChar(4000)     NULL,
			"CEnumB" VarChar(4000)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 100
DECLARE @A Int32
SET     @A = NULL
DECLARE @B Int32
SET     @B = NULL
DECLARE @EnumA Varchar2 -- String
SET     @EnumA = NULL
DECLARE @EnumB Varchar2 -- String
SET     @EnumB = NULL
DECLARE @CEnumA Varchar2 -- String
SET     @CEnumA = NULL
DECLARE @CEnumB Varchar2 -- String
SET     @CEnumB = NULL

INSERT INTO "Src"
(
	"Id",
	A,
	B,
	"EnumA",
	"EnumB",
	"CEnumA",
	"CEnumB"
)
VALUES
(
	:Id,
	:A,
	:B,
	:EnumA,
	:EnumB,
	:CEnumA,
	:CEnumB
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 101
DECLARE @A Int32
SET     @A = NULL
DECLARE @B Int32
SET     @B = 1
DECLARE @EnumA Varchar2 -- String
SET     @EnumA = NULL
DECLARE @EnumB Varchar2(1) -- String
SET     @EnumB = 'A'
DECLARE @CEnumA Varchar2 -- String
SET     @CEnumA = NULL
DECLARE @CEnumB Varchar2(9) -- String
SET     @CEnumB = '___One___'

INSERT INTO "Src"
(
	"Id",
	A,
	B,
	"EnumA",
	"EnumB",
	"CEnumA",
	"CEnumB"
)
VALUES
(
	:Id,
	:A,
	:B,
	:EnumA,
	:EnumB,
	:CEnumA,
	:CEnumB
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 110
DECLARE @A Int32
SET     @A = 1
DECLARE @B Int32
SET     @B = NULL
DECLARE @EnumA Varchar2(1) -- String
SET     @EnumA = 'A'
DECLARE @EnumB Varchar2 -- String
SET     @EnumB = NULL
DECLARE @CEnumA Varchar2(9) -- String
SET     @CEnumA = '___One___'
DECLARE @CEnumB Varchar2 -- String
SET     @CEnumB = NULL

INSERT INTO "Src"
(
	"Id",
	A,
	B,
	"EnumA",
	"EnumB",
	"CEnumA",
	"CEnumB"
)
VALUES
(
	:Id,
	:A,
	:B,
	:EnumA,
	:EnumB,
	:CEnumA,
	:CEnumB
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 111
DECLARE @A Int32
SET     @A = 1
DECLARE @B Int32
SET     @B = 1
DECLARE @EnumA Varchar2(1) -- String
SET     @EnumA = 'A'
DECLARE @EnumB Varchar2(1) -- String
SET     @EnumB = 'A'
DECLARE @CEnumA Varchar2(9) -- String
SET     @CEnumA = '___One___'
DECLARE @CEnumB Varchar2(9) -- String
SET     @CEnumB = '___One___'

INSERT INTO "Src"
(
	"Id",
	A,
	B,
	"EnumA",
	"EnumB",
	"CEnumA",
	"CEnumB"
)
VALUES
(
	:Id,
	:A,
	:B,
	:EnumA,
	:EnumB,
	:CEnumA,
	:CEnumB
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 112
DECLARE @A Int32
SET     @A = 1
DECLARE @B Int32
SET     @B = 2
DECLARE @EnumA Varchar2(1) -- String
SET     @EnumA = 'A'
DECLARE @EnumB Varchar2(1) -- String
SET     @EnumB = 'B'
DECLARE @CEnumA Varchar2(9) -- String
SET     @CEnumA = '___One___'
DECLARE @CEnumB Varchar2(9) -- String
SET     @CEnumB = '___Two___'

INSERT INTO "Src"
(
	"Id",
	A,
	B,
	"EnumA",
	"EnumB",
	"CEnumA",
	"CEnumB"
)
VALUES
(
	:Id,
	:A,
	:B,
	:EnumA,
	:EnumB,
	:CEnumA,
	:CEnumB
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 121
DECLARE @A Int32
SET     @A = 2
DECLARE @B Int32
SET     @B = 1
DECLARE @EnumA Varchar2(1) -- String
SET     @EnumA = 'B'
DECLARE @EnumB Varchar2(1) -- String
SET     @EnumB = 'A'
DECLARE @CEnumA Varchar2(9) -- String
SET     @CEnumA = '___Two___'
DECLARE @CEnumB Varchar2(9) -- String
SET     @CEnumB = '___One___'

INSERT INTO "Src"
(
	"Id",
	A,
	B,
	"EnumA",
	"EnumB",
	"CEnumA",
	"CEnumB"
)
VALUES
(
	:Id,
	:A,
	:B,
	:EnumA,
	:EnumB,
	:CEnumA,
	:CEnumB
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	x."Id"
FROM
	"Src" x
WHERE
	(x."CEnumA" <> x."CEnumB" OR x."CEnumA" IS NULL AND x."CEnumB" IS NOT NULL OR x."CEnumA" IS NOT NULL AND x."CEnumB" IS NULL)
ORDER BY
	x."Id"

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

