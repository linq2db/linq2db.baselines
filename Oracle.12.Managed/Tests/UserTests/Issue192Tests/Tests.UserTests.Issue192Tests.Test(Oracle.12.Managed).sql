BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(11) -- String
SET     @Name = 'NotVerified'
DECLARE @BoolValue Char -- AnsiStringFixedLength
SET     @BoolValue = 'N'
DECLARE @GuidValue Varchar2(36) -- String
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
	:Id,
	:Name,
	:BoolValue,
	:GuidValue
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name Varchar2(8) -- String
SET     @Name = 'Verified'
DECLARE @BoolValue Char -- AnsiStringFixedLength
SET     @BoolValue = 'Y'
DECLARE @GuidValue Varchar2(36) -- String
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
	:Id,
	:Name,
	:BoolValue,
	:GuidValue
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'N'

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'Y'

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @cond Varchar2(36) -- String
SET     @cond = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	COUNT(*)
FROM
	"TypeConvertTable" t1
WHERE
	t1."GuidValue" = :cond

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'N'
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'Y'
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'N'
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'Y'
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'N'
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'Y'
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'N'
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'Y'
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'N'
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'Y'
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @GuidValue Varchar2(36) -- String
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT
	t1."Id",
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."GuidValue" = :GuidValue
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @GuidValue Varchar2(36) -- String
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	t1."Id",
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."GuidValue" = :GuidValue
FETCH NEXT 1 ROWS ONLY

