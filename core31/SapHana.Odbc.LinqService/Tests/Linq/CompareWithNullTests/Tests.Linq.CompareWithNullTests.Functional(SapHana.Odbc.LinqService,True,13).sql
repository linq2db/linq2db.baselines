BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Src"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Src"
(
	"Id"     Integer     NOT NULL,
	"A"      Integer         NULL,
	"B"      Integer         NULL,
	"EnumA"  NChar(1)        NULL,
	"EnumB"  NChar(1)        NULL,
	"CEnumA" VarChar(20)     NULL,
	"CEnumB" VarChar(20)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 100
DECLARE @A  -- Int32
SET     @A = NULL
DECLARE @B  -- Int32
SET     @B = NULL
DECLARE @EnumA NChar -- StringFixedLength
SET     @EnumA = NULL
DECLARE @EnumB NChar -- StringFixedLength
SET     @EnumB = NULL
DECLARE @CEnumA VarChar -- AnsiString
SET     @CEnumA = NULL
DECLARE @CEnumB VarChar -- AnsiString
SET     @CEnumB = NULL

INSERT INTO "Src"
(
	"Id",
	"A",
	"B",
	"EnumA",
	"EnumB",
	"CEnumA",
	"CEnumB"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 101
DECLARE @A  -- Int32
SET     @A = NULL
DECLARE @B  -- Int32
SET     @B = 1
DECLARE @EnumA NChar -- StringFixedLength
SET     @EnumA = NULL
DECLARE @EnumB NChar(1) -- StringFixedLength
SET     @EnumB = 'A'
DECLARE @CEnumA VarChar -- AnsiString
SET     @CEnumA = NULL
DECLARE @CEnumB VarChar(9) -- AnsiString
SET     @CEnumB = '___One___'

INSERT INTO "Src"
(
	"Id",
	"A",
	"B",
	"EnumA",
	"EnumB",
	"CEnumA",
	"CEnumB"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 110
DECLARE @A  -- Int32
SET     @A = 1
DECLARE @B  -- Int32
SET     @B = NULL
DECLARE @EnumA NChar(1) -- StringFixedLength
SET     @EnumA = 'A'
DECLARE @EnumB NChar -- StringFixedLength
SET     @EnumB = NULL
DECLARE @CEnumA VarChar(9) -- AnsiString
SET     @CEnumA = '___One___'
DECLARE @CEnumB VarChar -- AnsiString
SET     @CEnumB = NULL

INSERT INTO "Src"
(
	"Id",
	"A",
	"B",
	"EnumA",
	"EnumB",
	"CEnumA",
	"CEnumB"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 111
DECLARE @A  -- Int32
SET     @A = 1
DECLARE @B  -- Int32
SET     @B = 1
DECLARE @EnumA NChar(1) -- StringFixedLength
SET     @EnumA = 'A'
DECLARE @EnumB NChar(1) -- StringFixedLength
SET     @EnumB = 'A'
DECLARE @CEnumA VarChar(9) -- AnsiString
SET     @CEnumA = '___One___'
DECLARE @CEnumB VarChar(9) -- AnsiString
SET     @CEnumB = '___One___'

INSERT INTO "Src"
(
	"Id",
	"A",
	"B",
	"EnumA",
	"EnumB",
	"CEnumA",
	"CEnumB"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 112
DECLARE @A  -- Int32
SET     @A = 1
DECLARE @B  -- Int32
SET     @B = 2
DECLARE @EnumA NChar(1) -- StringFixedLength
SET     @EnumA = 'A'
DECLARE @EnumB NChar(1) -- StringFixedLength
SET     @EnumB = 'B'
DECLARE @CEnumA VarChar(9) -- AnsiString
SET     @CEnumA = '___One___'
DECLARE @CEnumB VarChar(9) -- AnsiString
SET     @CEnumB = '___Two___'

INSERT INTO "Src"
(
	"Id",
	"A",
	"B",
	"EnumA",
	"EnumB",
	"CEnumA",
	"CEnumB"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 121
DECLARE @A  -- Int32
SET     @A = 2
DECLARE @B  -- Int32
SET     @B = 1
DECLARE @EnumA NChar(1) -- StringFixedLength
SET     @EnumA = 'B'
DECLARE @EnumB NChar(1) -- StringFixedLength
SET     @EnumB = 'A'
DECLARE @CEnumA VarChar(9) -- AnsiString
SET     @CEnumA = '___Two___'
DECLARE @CEnumB VarChar(9) -- AnsiString
SET     @CEnumB = '___One___'

INSERT INTO "Src"
(
	"Id",
	"A",
	"B",
	"EnumA",
	"EnumB",
	"CEnumA",
	"CEnumB"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Id"
FROM
	"Src" "x"
WHERE
	("x"."EnumA" <> "x"."EnumB" OR "x"."EnumA" IS NULL AND "x"."EnumB" IS NOT NULL OR "x"."EnumA" IS NOT NULL AND "x"."EnumB" IS NULL)
ORDER BY
	"x"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Src"

