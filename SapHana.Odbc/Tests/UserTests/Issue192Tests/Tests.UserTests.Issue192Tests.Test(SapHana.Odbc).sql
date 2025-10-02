BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(11) -- String
SET     @Name = 'NotVerified'
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
SET     @BoolValue = 'N'
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO "TypeConvertTable"
(
	"Id",
	"Name",
	"BoolValue",
	"GuidValue"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'Verified'
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
SET     @BoolValue = 'Y'
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

INSERT INTO "TypeConvertTable"
(
	"Id",
	"Name",
	"BoolValue",
	"GuidValue"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'N'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'Y'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @cond VarChar(36) -- AnsiString
SET     @cond = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	COUNT(*)
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."GuidValue" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'N'
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'Y'
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'N'
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'Y'
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'N'
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'Y'
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'N'
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'Y'
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'N'
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'Y'
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."GuidValue" = ?
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."GuidValue" = ?
LIMIT 1

